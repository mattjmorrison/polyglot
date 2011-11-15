curl http://www.scala-lang.org/downloads/distrib/files/scala-2.9.1.final.tgz > scala-2.9.1.final.tgz
tar zxvf scala-2.9.1.final.tgz
mv scala-2.9.1.final ../run/scala
rm -rf scala-*.tgz

curl http://www.artima.com/downloadScalaTest/scalatest-1.6.1.zip > scalatest-1.6.1.zip
unzip scalatest-1.6.1.zip
mv scalatest-1.6.1/scalatest*.jar ../run/scala/
rm -rf scalatest*
