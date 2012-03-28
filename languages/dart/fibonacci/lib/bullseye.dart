/* src/bullseye.dart */
#library("bullseye");

/* src/bullseye/bullseye.dart */
class Bullseye {
  static final VERSION = "0.1.0";

  static BullseyeSpecFormatter formatter;

  static bool _formatterCallbacksSetup;

  static void run(Iterable<BullseyeTestFixture> fixtures) {
    _setupFormatterCallbacks();

    if (formatter == null)
      formatter = new BullseyeSpecDocFormatter();

    formatter.header();
    for (BullseyeTestFixture fixture in fixtures) fixture.run();
    formatter.footer();
  }

  static _setupFormatterCallbacks() {
    if (_formatterCallbacksSetup != true) {
      _formatterCallbacksSetup = true;
      BullseyeTestFixture.beforeRun((desc) => Bullseye.formatter.beforeDescribe(desc));
      BullseyeTestFixture.afterRun((desc) => Bullseye.formatter.afterDescribe(desc));
      BullseyeTest.beforeRun((ex) => Bullseye.formatter.beforeTest(ex));
      BullseyeTest.afterRun((ex) => Bullseye.formatter.afterTest(ex));
    }
  }
}

/* src/bullseye/magic_map.dart */
class BullseyeMagicMap {

  Map<String,Object> map;

  bool throwExceptionUnlessMapContainsKey;

  String get something() => "hi";

  BullseyeMagicMap([Map<String,Object> map = null, bool throwExceptionUnlessMapContainsKey = false, Iterable<String> allowed = null]) {
    this.throwExceptionUnlessMapContainsKey = throwExceptionUnlessMapContainsKey;
    this.map = (map == null) ? new LinkedHashMap<String,Object>() : map;

    if (allowed != null)
      onlyAllow(allowed);
  }

  // Given the names of keys/properties, this will setup this MagicMap 
  // so it will throw a NoSuchMethodException if you try to get/set 
  // any "magic" properties on this besides the allowed names given.
  //
  // Note: you can still access the internal map directly and we do 
  //       nothing to prevent you from getting/setting anything on 
  //       the Map, this just effects the noSuchMethod behavior.
  //
  // Note: after running this, your Map will contain keys for each 
  //       allowed name given with the value set to null.
  void onlyAllow(Iterable<String> allowed) {
    throwExceptionUnlessMapContainsKey = true;
    for (String key in allowed) map[key] = null;
  }

  noSuchMethod(String name, List args) {
    if (name.length > 4) { // needs to have get: or set: prefix
      String prefix  = name.substring(0, 4);
      String key     = name.substring(4);

      if (throwExceptionUnlessMapContainsKey == true)
        if (! map.containsKey(key))
          super.noSuchMethod(name, args);

      if (prefix == "get:")
        return map[key];
      else if (prefix == "set:")
        map[key] = args[0];
      else
        super.noSuchMethod(name, args);
    } else {
      super.noSuchMethod(name, args);
    }
  }

  // NOTE: This only supports functions that noSuchMethod supports.
  //
  // This won't return true if you ask a MagicMap if it respondsTo("toString") even 
  // though it very obviously does!  This is just paired with our noSuchMethod implementation.
  bool respondsTo(String name) {
    if (name.length > 4) {
      String prefix  = name.substring(0, 4);
      String key     = name.substring(4);
      if (throwExceptionUnlessMapContainsKey == true)
        return map.containsKey(key);
      else if (prefix == "get:" || prefix == "set:")
        return true;
    } else {
      return false;
    }
  }
  
  // @see Map.[]
  operator [](key) => map[key];

  // @see Map.[]=
  operator []=(key, value) => map[key] = value;

  // @see Map.length
  int get length() => map.length;

  // @see Map.forEach
  void forEach(void f(String, V)){ map.forEach(f); }

  // Get the name of the key to use in the map.
  // 
  // Returns null if we don't support the given name/args 
  // and, therefore, want to pass our noSuchMethod along to super.
  _getKeyName(String name, List args) {
    return null;
  }
}
/* src/bullseye/closure.dart */
class BullseyeClosure {

  BullseyeTestFixture parent;
  static bool closuresThrowExceptions = false;
  String description;
  Function fn;
  var returnValue;
  int timeItTookToRunInUs;
  BullseyeMagicMap meta;
  Exception exception;
  var stackTrace;
  bool throwExceptions;

  String    _status;
  bool      _run;

  BullseyeClosure([
     String description = null, Function fn = null, Map<String,Object> meta = null, 
     Iterable<String> tags = null, String tag = null, BullseyeTestFixture parent = null]) 
  {
    this.fn        = fn;
    this.description     = description;
    this.meta            = new BullseyeMagicMap(meta);
    this.parent          = parent;
    this.throwExceptions = false;
    this._run            = false;

    if (tags != null) this.tags = tags;
    if (tag  != null) this.tags.insertRange(0, 1, tag);
  }

  List<BullseyeTestFixture> get parents() {
    List<BullseyeTestFixture> allParents = (parent == null) ? new List<BullseyeTestFixture>() : parent.parents;
    if (parent != null) allParents.add(parent);
    return allParents;
  }

  String get fullDescription() {
    String desc = (parent == null) ? "" : parent.fullDescription;
    if (description != null) {
      if (desc.length > 0)
        desc += " ";
      desc = desc + description;
    }
    return desc;
  }

  bool get passed()  => status == BullseyeTestStatus.passed;
  bool get failed()  => status == BullseyeTestStatus.failed;
  bool get error()   => status == BullseyeTestStatus.error;
  bool get pending() => status == BullseyeTestStatus.pending;

  String get pendingReason() {
    if (status == BullseyeTestStatus.pending && exception is BullseyePendingException)
      return exception.toString();
    else
      return null;
  }

  void rerun() {
    _run       = false;
    exception  = null;
    stackTrace = null;
    run();
  }

  void run() {
    if (fn == null) return;
    if (_run == true)
      throw new UnsupportedOperationException("This cannot be run() more than once.  Try rerun() to explicitly run again.");

    _run = true;

    if (throwExceptions == true || closuresThrowExceptions == true) {
      _startTimer();
      returnValue = fn();
      _stopTimerAndRecordDuration();
      _status = BullseyeTestStatus.passed;
    } else {
      try {
        _startTimer();
        returnValue = fn();
        _status = BullseyeTestStatus.passed;
      } catch (ExpectException ex, var trace) {
        _status    = BullseyeTestStatus.failed;
        exception  = ex;
        stackTrace = trace;
      } catch (BullseyePendingException ex, var trace) {
        _status    = BullseyeTestStatus.pending;
        exception  = ex;
        stackTrace = trace;
      } catch (Exception ex, var trace) {
        _status    = BullseyeTestStatus.error;
        exception  = ex;
        stackTrace = trace;
      } finally {
        _stopTimerAndRecordDuration();
      }
    }
  }

  String get status() {
    if (_status != null)
      return _status;
    else if (fn == null)
      return BullseyeTestStatus.pending;
    else
      return BullseyeTestStatus.not_run;
  }

  Iterable<String> get tags() {
    if (meta["tags"] == null)
      meta["tags"] = new List<String>();
    return meta["tags"];
  }

  void set tags(List<String> values){ meta["tags"] = values; }

  void setMeta(Map<String,Object> metaData) {
    meta.map = metaData;
  }

  void _startTimer() {
  }

  void _stopTimerAndRecordDuration() {
  }
}

/* src/bullseye/test.dart */
class BullseyeTest extends BullseyeClosure {

  static List<Function> _beforeFunctions;
  static List<Function> _afterFunctions;
  static void beforeRun(Function callback){ _beforeFunctions.add(callback); }
  static void afterRun(Function callback){ _afterFunctions.add(callback); }

  BullseyeTest([BullseyeTestFixture parent, String description = null, Function fn = null]) : super(parent: parent, description: description, fn: fn) {
    if (_beforeFunctions == null) _beforeFunctions = new List<Function>();
    if (_afterFunctions == null)  _afterFunctions = new List<Function>();
    if (description == null) this.description = "test";
  }

  void run() {
    _beforeFunctions.forEach((fn) => fn(this));
    super.run();
    _afterFunctions.forEach((fn) => fn(this));
  }
}
/* src/bullseye/test_status.dart */
// TODO TestStatus ... this is really for any closure now ...
class BullseyeTestStatus {
  static final String not_run = "Not Run";
  static final String passed  = "Passed";
  static final String pending = "Pending";
  static final String failed  = "Failed";
  static final String error   = "Error";
}
/* src/bullseye/test_fixture.dart */
// PLAYING WITH MAKING SOME MINIMALISTIC (YET REALISTIC) interfaces ...

// NOTE: can we just do 'String description' and implement that via a getter instead of a field or ... ?

/*
interface BullseyeTest {
  TestFixture get parent();
  void run();
  bool get passed();
  String get description();
}

interface BullseyeTestFixture {
  TestFixture get parent();
  Iterable<BullseyeTest> get tests();
  // setups?
  // teardowns?
}
*/

class BullseyeTestFixture {

  static List<Function> _beforeFunctions;
  static List<Function> _afterFunctions;
  static void beforeRun(Function callback){ _beforeFunctions.add(callback); }
  static void afterRun(Function callback){ _afterFunctions.add(callback); }
  List<BullseyeTestFixture> testFixtures;

  List<BullseyeTest> tests;
  BullseyeTestFixture parent;
  String description;
  Function fn;
  List befores;
  List afters;
  bool _evaluatedFn;
  List<BullseyeTestFixture> _parents;

  BullseyeTestFixture([BullseyeTestFixture parent = null, String description = null, Function fn = null]) {
    if (_beforeFunctions == null) _beforeFunctions = new List<Function>();
    if (_afterFunctions == null)  _afterFunctions = new List<Function>();

    this.description   = description;
    this.fn        = fn;
    this.tests  = new List<BullseyeTest>();
    this.testFixtures = new List<BullseyeTestFixture>();
    this.befores   = new List();
    this.afters    = new List();
    this.parent    = parent;
  }

  void evaluate() {
    if (_evaluatedFn != true) {
      _evaluatedFn = true;
      if (fn != null) fn();
    }
  }

  List<BullseyeTestFixture> get parents() {
    List<BullseyeTestFixture> parents = new List<BullseyeTestFixture>();
    BullseyeTestFixture       current = parent;
    while (current != null) {
      parents.insertRange(0, 1, current);
      current = current.parent;
    }
    return parents;
  }

  String get fullDescription() {
    String desc = (parent == null) ? "" : parent.fullDescription;
    if (description != null) {
      if (desc.length > 0)
        desc += " ";
      desc = desc + description;
    }
    return desc;
  }

  void runBefores() {
    befores.forEach((fn) => fn());
  }

  void runAfters() {
    afters.forEach((fn) => fn());
  }

  void run() {
    _beforeFunctions.forEach((fn) => fn(this));
    tests.forEach((test) {
      parents.forEach((parent) => parent.runBefores());
      runBefores();
      test.run();
      runAfters();
      parents.forEach((parent) => parent.runAfters());
    });
    testFixtures.forEach((desc) => desc.run());
    _afterFunctions.forEach((fn) => fn(this));
  }
}

/* src/bullseye/test_fixture_definition.dart */
class BullseyeTestFixtureDefinition extends BullseyeTestFixture {

  // Keeps track of the list of BullseyeTestFixture that are currently being defined.
  //
  // A BullseyeTestFixtureDefinition lets you simply call defineTest() and it 
  // finds the most recent BullseyeTestFixture being defined via defineNestedTestFixture 
  // (or the top-level BullseyeTestFixture, ie. this BullseyeTestFixtureDefinition) and 
  // it will add a BullseyeTest to *that* BullseyeTestFixture.
  //
  // This keeps track of those BullseyeTestFixture so we can find the one you're currently defining.
  List<BullseyeTestFixture> _testFixturesBeingDefined;

  BullseyeTestFixtureDefinition() {
    _testFixturesBeingDefined = <BullseyeTestFixture>[this];
    defineTestFixture();
  }

  String get description() {
    // TODO if description was set manually, return it, otherwise return the default.
    return defaultSubjectName;
  }

  String get defaultSubjectName() => BullseyeUtils.getClassName(this);

  void defineTestFixture(){}

  BullseyeTestFixture defineNestedTestFixture([String description = null, Function fn = null]) {
    BullseyeTestFixture testFixture = new BullseyeTestFixture(description: description, fn: fn, parent: _currentTestFixture);

    _currentTestFixture.testFixtures.add(testFixture);

    _testFixturesBeingDefined.addLast(testFixture);
    testFixture.evaluate();
    _testFixturesBeingDefined.removeLast();

    return testFixture;
  }

  BullseyeTest defineTest([String description = null, Function fn = null]) {
    BullseyeTest test = new BullseyeTest(parent: _currentTestFixture, description: description, fn: fn);
    _currentTestFixture.tests.add(test);
    return test;
  }

  void pending([String message = "PENDING"]) {
    throw new BullseyePendingException(message);
  }

  void defineSetUp([Function fn = null]) {
    _currentTestFixture.befores.add(fn);
  }

  void defineTearDown([Function fn = null]) {
    _currentTestFixture.afters.add(fn);
  }

  BullseyeTestFixture get _currentTestFixture() => _testFixturesBeingDefined.last();

}
/* src/bullseye/spec.dart */
class BullseyeSpec extends BullseyeTestFixtureDefinition {
  static final RegExp descriptionNameReplacementPattern = const RegExp(@"Spec$");

  void defineTestFixture(){ spec(); }
  void spec(){}

  BullseyeTestFixture describe([String description = null, Function fn = null]) {
    defineNestedTestFixture(description: description, fn: fn);
  }

  BullseyeTest it([String description = null, Function fn = null]) {
    defineTest(description: description, fn: fn);
  }

  void before([Function fn = null]) {
    defineSetUp(fn: fn);
  }

  void after([Function fn = null]) {
    defineTearDown(fn: fn);
  }

  String get defaultSubjectName() {
    var description = super.defaultSubjectName;
    return description.endsWith("Spec") ? description.substring(0, description.length - 4) : description;
  }
}
/* src/bullseye/test_case.dart */
class BullseyeTestCase extends BullseyeTestFixtureDefinition {

  void defineTestFixture() { 
    // defineTests() can optionally return an Iterable<Function>.
    // If functions are returned, we call test() to add each of them as an unnamed test.
    var testFunctions = defineTests();
    if (testFunctions == null) testFunctions = testCase();
    if (testFunctions is Iterable<Function>)
      for (Function fn in testFunctions)
        test(fn: fn);
  }

  Iterable<Function> defineTests() => null;

  /* Alias for defineTests() */
  Iterable<Function> testCase() => null;

  BullseyeTestFixture context([String description = null, Function fn = null]) {
    defineNestedTestFixture(description: description, fn: fn);
  }

  BullseyeTest test([String description = null, Function fn = null]) {
    defineTest(description: description, fn: fn);
  }

  void setUp([Function fn = null]) {
    defineSetUp(fn: fn);
  }

  void tearDown([Function fn = null]) {
    defineTearDown(fn: fn);
  }
}

/* src/bullseye/pending_exception.dart */
class BullseyePendingException implements Exception {
  String message;

  BullseyePendingException(this.message);

  String toString() => message;
}
/* src/bullseye/formattable.dart */
interface BullseyeSpecFormattable {

  void header();

  void footer();

  void beforeDescribe(BullseyeTestFixture testFixture);

  void afterDescribe(BullseyeTestFixture testFixture);

  void beforeTest(BullseyeTest testFixture);

  void afterTest(BullseyeTest testFixture);

}
/* src/bullseye/formatter.dart */
class BullseyeSpecFormatter implements BullseyeSpecFormattable {

  static Map<String,String> _colors;
         bool               _colorize;
         Function           _loggingFunction;

  static Map<String,String> get colors() {
    if (_colors == null)
      _colors = {
        "white":  "\x1b\x5b;0;37m",
        "red":    "\x1b\x5b;0;31m",
        "green":  "\x1b\x5b;0;32m",
        "yellow": "\x1b\x5b;0;33m"
      };
    return _colors;
  }

  void header(){}
  void footer(){}
  void beforeDescribe(BullseyeTestFixture testFixture){}
  void afterDescribe(BullseyeTestFixture testFixture){}
  void beforeTest(BullseyeTest test){}
  void afterTest(BullseyeTest test){}

  bool printToStdout;

  String get indentString() => "  ";

  String get colorReset() => "\x1b\x5b;0;37m";

  bool get colorize() {
    if (_colorize == null) _colorize = true;
    return (_colorize == true);
  }

  set colorize(bool value) => _colorize = value;

  void logger(Function fn) {
    _loggingFunction = fn;
  }

  void write(String text, [int indent = 0, String color = null]) {
    String status = _indent(indent, text);
    if (colorize == true)
      status = _colorizeText(status, color);
    if (printToStdout != false)
      print(status);
    if (_loggingFunction != null)
      _loggingFunction(status + "\n");
  }

  void writeNewline(){ write(""); }

  String _colorizeText([String text = null, String color = null]) {
    if (color == null)
      return text;
    else
      return "${colors[color]}${text}${colorReset}";
  }

  String _indent(int indent, String text) {
    String prefix = "";
    for (int i = 0; i < indent; i++)
      prefix += indentString;
    return prefix + text;
  }
}
/* src/bullseye/specdoc_formatter.dart */
class BullseyeSpecDocFormatter extends BullseyeSpecFormatter implements BullseyeSpecFormattable {

  int _testFixtureDepth;

  List<BullseyeTest> tests;

  BullseyeSpecDocFormatter() {
    tests = new List<BullseyeTest>();
    _testFixtureDepth = 0;
  }

  Collection<BullseyeTest> get passedTests()  => tests.filter((ex) => ex.passed);
  Collection<BullseyeTest> get failedTests()  => tests.filter((ex) => ex.failed);
  Collection<BullseyeTest> get errorTests()   => tests.filter((ex) => ex.error);
  Collection<BullseyeTest> get pendingTests() => tests.filter((ex) => ex.pending);

  void header() {
    write("~ Bullseye ${Bullseye.VERSION} ~\n");
  }

  void beforeDescribe(BullseyeTestFixture testFixture) {
    write(testFixture.description, indent: _testFixtureDepth);
    ++_testFixtureDepth;
  }

  void afterDescribe(BullseyeTestFixture testFixture) {
    --_testFixtureDepth;
    if (_testFixtureDepth == 0)
      writeNewline();
  }

  void afterTest(BullseyeTest test) {
    if (tests == null)
      tests = new List<BullseyeTest>();

    tests.add(test);

    String pendingString = "";
    if (test.pending == true)
      if (test.pendingReason == null)
        pendingString = "[PENDING] ";
      else
        pendingString = "[${test.pendingReason}] ";

    write(pendingString + test.description, indent: _testFixtureDepth, color: colorForTest(test));
  }

  String colorForTest(BullseyeTest test) {
    switch (test.status) {
      case BullseyeTestStatus.passed:  return "green";
      case BullseyeTestStatus.failed:  return "red";
      case BullseyeTestStatus.error:   return "red";
      case BullseyeTestStatus.pending: return "yellow";
      default: return "white";
    }
  }

  void separator() {
    write("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
  }

  void footer() {
    if (shouldPrintSeparator) separator();
    failedSummary();
    errorSummary();
    pendingSummary();
    summary();
  }

  bool get shouldPrintSeparator() => (failedTests.length > 0 || errorTests.length > 0 || pendingTests.length > 0);

  void summary() {
    String color   = "green";
    String summary = "${tests.length} Tests, ${failedTests.length} Failures";
    if (shouldPrintSeparator)
      summary = "\n$summary";
    if (errorTests.length > 0) {
      summary += ", ${errorTests.length} Errors";
      color = "red";
    }
    if (pendingTests.length > 0) {
      summary += ", ${pendingTests.length} Pending";
      if (color == "green")
        color = "yellow";
    }
    write(summary, color: color);
  }

  void failedSummary() {
    if (failedTests.length > 0) {
      write("\nFailures:");
      failedTests.forEach((test) {
        writeNewline();
        write(test.fullDescription, indent: 1, color: colorForTest(test));
        write("Exception: ${test.exception}", indent: 2);
        write("StackTrace:\n${test.stackTrace}", indent: 2);
      });
    }
  }

  void errorSummary() {
    if (errorTests.length > 0) {
      write("\nErrors:");
      errorTests.forEach((test) {
        writeNewline();
        write(test.fullDescription, indent: 1, color: colorForTest(test));
        write("Exception: ${test.exception}", indent: 2, color: colorForTest(test));
        write("StackTrace:\n${test.stackTrace}", indent: 2);
      });
    }
  }

  void pendingSummary() {
    if (pendingTests.length > 0) {
      write("\nPending:\n");
      pendingTests.forEach((test) {
        String pendingReason = (test.pendingReason != null) ? " [${test.pendingReason}]" : "";
        write("${test.fullDescription}${pendingReason}", indent: 1, color: colorForTest(test));
      });
    }
  }
}
/* src/bullseye/utils.dart */
class BullseyeUtils {
  static final RegExp classNamePattern = const RegExp(@"^Failed type check: type (.*) is not assignable to type BullseyeUtils");

  // This does evil to get the class/type name of the given object.
  // Once Dart has reflection, this evil won't be necessary  :)
  //
  // Note: this implementation won't currently work with dartc because TypeErrors aren't raised.
  static String getClassName(var object) {
    if (object == null)          return "null";
    if (object is BullseyeUtils) return "BullseyeUtils";

    try {
      _callingMeResultsInATypeError(object);
    } catch (TypeError error) {
      return classNamePattern.firstMatch(error.toString()).group(1);
    }
  }

  static BullseyeUtils _callingMeResultsInATypeError(var object) {
    return object; // the ONLY way this won't blow up is if a BullseyeUtils instance is passed.
  }
}