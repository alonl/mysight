Mysight QA
======

##How to set up an instance of mamute

First of all, you need to setup an MySQL database. The default database name is 
`mamute_development`, the username is `root` and the password must be blank.

###Using a compiled war file:

1. Download the war of the latest version at http://www.mamute.org
2. Unpack it to a folder named `yourproject/mamute`
3. Run it by executing the bash script `mamute/run.sh`
4. If everything went worked, you are free to customize `mamute` folder as you want to! 

###Using git + maven:

1. Clone the repository from [github](https://github.com/caelum/mamute)
3. Run `mvn clean package -DskipTests`
4. Make a copy of `mamute/target/mamute-1.0.0-SNAPSHOT` to `yourproject/mamute`
5. Run it by executing the bash script `mamute/run.sh`
6. If everything went worked, you are free to customize `mamute` folder as you want to! 

##FAQ

* [How to setup an instance](http://meta.mamute.org/221-how-to-set-up-an-instance-of-mamute)

* [How can I boot Mamute in a production environment?](http://meta.mamute.org/231-how-can-i-boot-mamute-in-a-production-environment)

* [How can I configure ad banners in my site?](http://meta.mamute.org/241-how-can-i-configure-ad-banners-in-my-site)

* [How can I configure the system to activate/deactivate some feature?](http://meta.mamute.org/292-how-can-i-configure-the-system-to-activatedeactivate-some-feature)

* [How can I configure the system to allow/disallow the creation of tags by common users?](http://meta.mamute.org/251-how-can-i-configure-the-system-to-allowdisallow-the-creation-of-tags-by-common-users)

* [Is it possible to delete inappropriate questions?](http://meta.mamute.org/261-is-it-possible-to-delete-inappropriate-questions)

* [How can I update mamute in my project?](http://meta.mamute.org/271-how-can-i-update-mamute-in-my-project)

* [What are the basic CSS classes to customize Mamute?](http://meta.mamute.org/281-what-are-the-basic-css-classes-to-customize-mamute)


##Questions?

Send your questions to [mamute meta](http://meta.mamute.org).
