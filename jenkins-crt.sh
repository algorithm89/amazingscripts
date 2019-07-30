echo -n | openssl s_client -connect ftp-chi.osuosl.org:443 | sed -ne '/-BEGIN CERTIFICATE-/,/-END CERTIFICATE-/p' > ftp-chi.osuosl.org.crt
keytool -import -v -trustcacerts -alias <your domain> -file ~/<your domain>.crt -keystore <JAVA HOME>/jre/lib/security/cacerts -keypass changeit -storepass changeit

/etc/sysconfig/jenkins

JENKINS_HTTPS_KEYSTORE="-Djavax.net.ssl.trustStore=/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.212.b04-0.el7_6.x86_64/jre/lib/security/cacerts"
JENKINS_JAVA_OPTIONS="-Djava.awt.headless=true"
