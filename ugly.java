 /*
UGLY UGLY UGLY HACK !!!
*/
QFile inFile(uisFile);
if (!inFile.open(QIODevice::ReadOnly | QIODevice::Text))
return;
 
QFile outFile("/tmp/temp.ini");
if (!outFile.open(QIODevice::WriteOnly | QIODevice::Text))
return;
QTextStream in(&inFile);
QTextStream out(&outFile);
 
while (!in.atEnd())
{
QString line = in.readLine();
line.replace("\\","\\\\");
out << line << endl;
}
inFile.close();
outFile.close();
/*
END OF UGLY UGLY UGLY HACK
*/
