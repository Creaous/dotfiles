#!/bin/bash
echo Downloading the JBR JCEF runtime...
wget -q --show-progress https://cache-redirector.jetbrains.com/intellij-jbr/jbr_jcef-21.0.2-linux-x64-b375.1.tar.gz
echo Extracting the JBR JCEF runtime...
tar -xvzf jbr_jcef-21.0.2-linux-x64-b375.1.tar.gz
echo Cleaning up...
rm jbr_jcef-21.0.2-linux-x64-b375.1.tar.gz
echo "To use the JBR JCEF runtime in IntelliJ IDEA, do the following:"
echo "Goto Help | Find Action | Choose Boot Java Runtime for the IDE"
echo "Select runtime | Add Custom Runtime | Add JDK | Use Path Below"
echo "The extracted path is: $(pwd)/jbr_jcef-21.0.2-linux-x64-b375.1"