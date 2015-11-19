# Alias - basic common operations
alias ll='ls -la'
alias pid='ps -ef | grep'

# Alias - opened port
port_usage_func() {
    lsof -n -i4TCP:$1 | grep LISTEN
}
alias port=port_usage_func

# Alias - disk usage
disk_usage_func() {
    du -sh '$1' | gsort -h
}
alias dusage=disk_usage_func

# Alias - connections
alias ssh-custom='ssh myLogin@example.com'
alias sftp-custom='sftp myLogin@example.com'

# Text Wrangler
alias tw='open -a /Applications/TextWrangler.app'

# Encoding
export LC_ALL=en_US.UTF-8

# Tell 'ls' to be colourful
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad

# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'
export TERM="xterm-color"
PS1='\[\e[0;33m\]\u\[\e[0m\]@\[\e[0;32m\]\h\[\e[0m\]:\[\e[0;34m\]\w\[\e[0m\]\$ '

# Java
export JAVA_HOME=`/usr/libexec/java_home -v1.8`

# Maven
export M2_HOME=/usr/local/apache/maven/apache-maven-3.2.5
export M2=$M2_HOME/bin
export PATH=$M2:$PATH

# Gradle
export GRADLE_HOME=/usr/local/gradle/gradle-1.8
export PATH=$GRADLE_HOME/bin:$PATH

# Android Studio
export ANDROID_HOME=~/Library/Android/sdk

# Postgres.app
export POSTGRES_APP_HOME=/Applications/Postgres.app/Contents/Versions/9.4
export PATH=$POSTGRES_APP_HOME/bin:$PATH

# Subversion & Other stuff not in default bin directory
export PATH=/usr/local/bin:$PATH

# Tomcat, Glassfish, etc.
export TOMCAT_HOME=/Library/Tomcat
export GLASSFISH_HOME=/Library/Glassfish
export JETTY_HOME=/Library/Jetty
