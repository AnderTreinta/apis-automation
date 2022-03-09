# Karate
## Test Automation Treinta `Simple.`
<div> 
  <a href="https://github.com/intuit/karate/wiki/Support">
    <img src="https://img.shields.io/badge/support-wiki-red.svg"/>
  </a>
  <a href="https://twitter.com/getkarate">
    <img src="https://img.shields.io/twitter/follow/getkarate.svg?style=social&label=Follow"/>
  </a>
  <a href="https://github.com/intuit/karate/stargazers">
    <img src="https://img.shields.io/github/stars/intuit/karate?style=social"/>
  </a>
</div>
<div>
  <a href="https://search.maven.org/artifact/com.intuit.karate/karate-core">
    <img src="https://img.shields.io/maven-central/v/com.intuit.karate/karate-core.svg"/>
  </a>
  <a href="https://github.com/intuit/karate/actions?query=workflow%3Amaven-build">
    <img src="https://github.com/intuit/karate/workflows/maven-build/badge.svg"/>
  </a>
  <a href="https://github.com/intuit/karate/releases">
    <img src="https://img.shields.io/github/release/intuit/karate.svg"/>
  </a>
</div>

## Hello World
### For API Testing
<a href="https://gist.github.com/ptrthomas/d5a2d9e15d0b07e4f1b46f692a599f93"><img src="src/main/resources/karate-hello-world.jpg" height="400" /></a>

> If you are familiar with Cucumber / Gherkin, the [*big difference*](#cucumber-vs-karate) here is that you **don't** need to write extra "glue" code or Java "step definitions" !

It is worth pointing out that JSON is a 'first class citizen' of the syntax such that you can express payload and expected data without having to use double-quotes and without having to enclose JSON field names in quotes.  There is no need to 'escape' characters like you would have had to in Java or other programming languages.

And you don't need to create additional Java classes for any of the payloads that you need to work with.

# Features
* Java knowledge is not required and even non-programmers can write tests
* Scripts are plain-text, require no compilation step or IDE, and teams can collaborate using Git / standard SCM
* Based on the popular Cucumber / Gherkin standard - with [IDE support](https://github.com/intuit/karate/wiki/IDE-Support) and syntax-coloring options
* Elegant [DSL](https://en.wikipedia.org/wiki/Domain-specific_language) syntax 'natively' supports JSON and XML - including [JsonPath](#set) and [XPath](#xpath-functions) expressions
* Eliminate the need for 'Java Beans' or 'helper code' to represent payloads and HTTP end-points, and [dramatically reduce the lines of code](https://twitter.com/KarateDSL/status/873035687817117696) needed for a test
* Ideal for testing the highly dynamic responses from [GraphQL](http://graphql.org) API-s because of Karate's built-in [text-manipulation](#text) and [JsonPath](https://github.com/json-path/JsonPath#path-examples) capabilities
* Tests are super-readable - as scenario data can be expressed in-line, in human-friendly [JSON](#json), [XML](#xml), Cucumber [Scenario](#the-cucumber-way) Outline [tables](#table), or a [payload builder](#set-multiple) approach [unique to Karate](https://gist.github.com/ptrthomas/d6beb17e92a43220d254af942e3ed3d9)
* Express expected results as readable, well-formed JSON or XML, and [assert in a single step](#match) that the entire response payload (no matter how complex or deeply nested) - is as expected
* Comprehensive [assertion capabilities](#fuzzy-matching) - and failures clearly report which data element (and path) is not as expected, for easy troubleshooting of even large payloads
* [Fully featured debugger](https://github.com/intuit/karate/wiki/IDE-Support#vs-code-karate-plugin) that can step *backwards* and even [re-play a step while editing it](https://twitter.com/KarateDSL/status/1167533484560142336) - a *huge* time-saver
* Simpler and more [powerful alternative](https://twitter.com/KarateDSL/status/878984854012022784) to JSON-schema for [validating payload structure](#schema-validation) and format - that even supports [cross-field](#referring-to-the-json-root) / domain validation logic
* Scripts can [call other scripts](#calling-other-feature-files) - which means that you can easily re-use and maintain authentication and 'set up' flows efficiently, across multiple tests
* Embedded JavaScript engine that allows you to build a library of [re-usable functions](#calling-javascript-functions) that suit your specific environment or organization
* Re-use of payload-data and user-defined functions across tests is [so easy](#reading-files) - that it becomes a natural habit for the test-developer
* Built-in support for [switching configuration](#switching-the-environment) across different environments (e.g. dev, QA, pre-prod)
* Support for [data-driven tests](#data-driven-tests) and being able to [tag or group](#tags) tests is built-in, no need to rely on an external framework
* Native support for reading [YAML](#yaml) and even [CSV](#csv-files) files - and you can use them for data-driven tests
* Standard Java / Maven project structure, and [seamless integration](#command-line) into CI / CD pipelines - and support for [JUnit 5](#junit-5)
* Option to use as a light-weight [stand-alone executable](https://github.com/intuit/karate/tree/master/karate-netty#standalone-jar) - convenient for teams not comfortable with Java
* Multi-threaded [parallel execution](#parallel-execution), which is a huge time-saver, especially for integration and end-to-end tests
* Built-in [test-reports](#test-reports) compatible with Cucumber so that you have the option of using third-party (open-source) maven-plugins for even [better-looking reports](karate-demo#example-report)
* Reports include HTTP request and response [logs *in-line*](#test-reports), which makes [troubleshooting](https://twitter.com/KarateDSL/status/899671441221623809) and [debugging](https://twitter.com/KarateDSL/status/935029435140489216) easier
* Easily invoke JDK classes, Java libraries, or re-use custom Java code if needed, for [ultimate extensibility](#calling-java)
* Simple plug-in system for [authentication](#http-basic-authentication-example) and HTTP [header management](#configure-headers) that will handle any complex, real-world scenario
* [Cross-browser Web UI automation](karate-core) so that you can test *all* layers of your application with the same framework
* Cross platform [Desktop Automation](karate-robot) that can be [mixed into Web Automation flows](https://twitter.com/ptrthomas/status/1215534821234995200) if needed
* Option to invoke via a [Java API](#java-api),  which means that you can easily [mix Karate into Java projects or legacy UI-automation suites](https://stackoverflow.com/q/47795762/143475)
* [Save significant effort](https://twitter.com/ptrthomas/status/986463717465391104) by re-using Karate test-suites as [Gatling performance tests](karate-gatling) that *deeply* assert that server responses are accurate under load
* Gatling integration can hook into [*any* custom Java code](https://github.com/intuit/karate/tree/master/karate-gatling#custom) - which means that you can perf-test even non-HTTP protocols such as [gRPC](https://github.com/thinkerou/karate-grpc)
* Built-in [distributed-testing capability](https://github.com/intuit/karate/wiki/Distributed-Testing) that works for API, UI and even [load-testing](https://github.com/intuit/karate/wiki/Distributed-Testing#gatling) - without needing any complex "grid" infrastructure
* [API mocks](karate-netty) or test-doubles that even [maintain CRUD 'state'](https://hackernoon.com/api-consumer-contract-tests-and-test-doubles-with-karate-72c30ea25c18) across multiple calls - enabling TDD for micro-services and [Consumer Driven Contracts](https://martinfowler.com/articles/consumerDrivenContracts.html)
* [Async](#async) support that allows you to seamlessly integrate the handling of custom events or listening to message-queues
* [Mock HTTP Servlet](karate-mock-servlet) that enables you to test __any__ controller servlet such as Spring Boot / MVC or Jersey / JAX-RS - without having to boot an app-server, and you can use your HTTP integration tests un-changed
* Built-in [HTML templating](https://twitter.com/KarateDSL/status/1338892932691070976) so that you can extend your test-reports into readable specifications
* Comprehensive support for different flavors of HTTP calls:
    * [SOAP](#soap-action) / XML requests
    * HTTPS / [SSL](#configure) - without needing certificates, key-stores or trust-stores
    * HTTP [proxy server](#configure) support
    * URL-encoded [HTML-form](#form-field) data
    * [Multi-part](#multipart-field) file-upload - including `multipart/mixed` and `multipart/related`
    * Browser-like [cookie](#cookie) handling
    * Full control over HTTP [headers](#header), [path](#path) and query [parameters](#param)
    * [Re-try](#retry-until) until condition
    * [Websocket](http://www.websocket.org) [support](#async)

# Getting Started
If you are a Java developer - Karate requires at least [Java](http://www.oracle.com/technetwork/java/javase/downloads/index.html) 8 and then either [Maven](http://maven.apache.org), [Gradle](https://gradle.org), [Eclipse](#eclipse-quickstart) or [IntelliJ](https://github.com/intuit/karate/wiki/IDE-Support#intellij-community-edition) to be installed. Note that Karate works fine on OpenJDK.

If you are new to programming or test-automation, refer to this video for [getting started with just the (free) IntelliJ Community Edition](https://youtu.be/W-af7Cd8cMc). Other options are the [quickstart](#quickstart) or the [standalone executable](karate-netty#standalone-jar).

If you *don't* want to use Java, you have the option of just downloading and extracting the [ZIP release](https://github.com/intuit/karate/wiki/ZIP-Release). Try this especially if you don't have much experience with programming or test-automation. We recommend that you use the [Karate extension for Visual Studio Code](https://marketplace.visualstudio.com/items?itemName=kirkslota.karate-runner) - and with that, JavaScript, .NET and Python programmers will feel right at home.

Visual Studio Code can be used for Java (or Maven) projects as well. One reason to use it is the excellent [*debug support* that we have for Karate](https://twitter.com/KarateDSL/status/1167533484560142336).

## Maven
All you need is available in the [`karate-core`](https://search.maven.org/artifact/com.intuit.karate/karate-core) artifact. You can run tests with this [directly](#parallel-execution), but teams can choose the JUnit variant (shown below) that pulls in JUnit 5 and [slightly improves the in-IDE experience](https://stackoverflow.com/a/65578167/143475).

```xml
<dependency>
    <groupId>com.intuit.karate</groupId>
    <artifactId>karate-junit5</artifactId>
    <version>1.1.0</version>
    <scope>test</scope>
</dependency>
```

If you want to use [JUnit 4](#junit-4), use `karate-junit4` instead of `karate-junit5`.

### Quickstart
It may be easier for you to use the Karate Maven archetype to create a skeleton project with one command. You can then skip the next few sections, as the `pom.xml`, recommended directory structure, sample test and [JUnit 5](#junit-5) runners - will be created for you.

> If you are behind a corporate proxy, or especially if your local Maven installation has been configured to point to a repository within your local network, the command below may not work. One workaround is to temporarily disable or rename your Maven [`settings.xml`](https://maven.apache.org/settings.html) file, and try again.

You can replace the values of `com.mycompany` and `myproject` as per your needs.

```
mvn archetype:generate \
-DarchetypeGroupId=com.intuit.karate \
-DarchetypeArtifactId=karate-archetype \
-DarchetypeVersion=1.1.0 \
-DgroupId=com.mycompany \
-DartifactId=myproject
```

This will create a folder called `myproject` (or whatever you set the name to).

### IntelliJ Quickstart
Refer to this video for [getting started with the free IntelliJ Community Edition](https://youtu.be/W-af7Cd8cMc). It simplifies the above process, since you only need to install IntelliJ. For Eclipse, refer to the wiki on [IDE Support](https://github.com/intuit/karate/wiki/IDE-Support).

## Folder Structure
A Karate test script has the file extension `.feature` which is the standard followed by Cucumber.  You are free to organize your files using regular Java package conventions.

The Maven tradition is to have non-Java source files in a separate `src/test/resources` folder structure - but we recommend that you keep them side-by-side with your `*.java` files. When you have a large and complex project, you will end up with a few data files (e.g. `*.js`, `*.json`, `*.txt`) as well and it is much more convenient to see the `*.java` and `*.feature` files and all related artifacts in the same place.

This can be easily achieved with the following tweak to your maven `<build>` section.
```xml
<build>
    <testResources>
        <testResource>
            <directory>src/test/java</directory>
            <excludes>
                <exclude>**/*.java</exclude>
            </excludes>
        </testResource>
    </testResources>        
    <plugins>
    ...
    </plugins>
</build>
```

This is very common in the world of Maven users and keep in mind that these are tests and not production code.

Alternatively, if using Gradle then add the following `sourceSets` definition

```yml
sourceSets {
    test {
        resources {
            srcDir file('src/test/java')
            exclude '**/*.java'
        }
    }
}
```

With the above in place, you don't have to keep switching between your `src/test/java` and `src/test/resources` folders, you can have all your test-code and artifacts under `src/test/java` and everything will work as expected.

Once you get used to this, you may even start wondering why projects need a `src/test/resources` folder at all !

### Spring Boot Example
[Soumendra Daas](https://twitter.com/sdaas) has created a nice example and guide that you can use as a reference here: [`hello-karate`](https://github.com/Sdaas/hello-karate). This demonstrates a Java Maven + JUnit 5 project set up to test a [Spring Boot](http://projects.spring.io/spring-boot/) app.

## IDE Support
Refer to the wiki - [IDE Support](https://github.com/intuit/karate/wiki/IDE-Support).

#### `file.encoding`
In some cases, for large payloads and especially when the default system encoding is not `UTF-8` (Windows or non-US locales), you may run into issues where a `java.io.ByteArrayInputStream` is encountered instead of a string. Other errors could be a `java.net.URISyntaxException` and [`match`](#match) not working as expected because of special or foreign characters, e.g. German or `ISO-8859-15`. Typical symptoms are your tests working fine via the IDE but not when running via Maven or Gradle. The solution is to ensure that when Karate tests run, the JVM `file.encoding` is set to `UTF-8`. This can be done via the [`maven-surefire-plugin` configuration](http://maven.apache.org/surefire/maven-surefire-plugin/test-mojo.html#argLine). Add the plugin to the `<build>/<plugins>` section of your `pom.xml` if not already present:

```xml
    <plugin>
        <groupId>org.apache.maven.plugins</groupId>
        <artifactId>maven-surefire-plugin</artifactId>
        <version>2.10</version>
        <configuration>
            <argLine>-Dfile.encoding=UTF-8</argLine>
        </configuration>
    </plugin>
``` 

## JUnit 5
Karate supports JUnit 5 and the advantage is that you can have multiple methods in a test-class. Only 1 `import` is needed, and instead of a class-level annotation, you use a nice [DRY](https://en.wikipedia.org/wiki/Don%27t_repeat_yourself) and [fluent-api](https://en.wikipedia.org/wiki/Fluent_interface) to express which tests and tags you want to use.

Note that the Java class does not need to be `public` and even the test methods do not need to be `public` - so tests end up being very concise.

Here is an [example](karate-junit5/src/test/java/karate/SampleTest.java):

```java
package karate;

import com.intuit.karate.junit5.Karate;

class SampleTest {

    @Karate.Test
    Karate testSample() {
        return Karate.run("sample").relativeTo(getClass());
    }
    
    @Karate.Test
    Karate testTags() {
        return Karate.run("tags").tags("@second").relativeTo(getClass());
    }

    @Karate.Test
    Karate testSystemProperty() {
        return Karate.run("classpath:karate/tags.feature")
                .tags("@second")
                .karateEnv("e2e")
                .systemProperty("foo", "bar");
    }

}
```

Note that more "builder" methods are available from the [`Runner.Builder`](#junit-4-parallel-execution) class such as `reportDir()` etc.

You should be able to right-click and run a single method using your IDE - which should be sufficient when you are in development mode. But to be able to run JUnit 5 tests from the command-line, you need to ensure that the latest version of the [maven-surefire-plugin](https://maven.apache.org/surefire/maven-surefire-plugin/examples/junit-platform.html) is present in your project `pom.xml` (within the `<build>/<plugins>` section):

```xml
<plugin>
    <groupId>org.apache.maven.plugins</groupId>
    <artifactId>maven-surefire-plugin</artifactId>
    <version>2.22.2</version>
</plugin>
```

To run a single test method, for example the `testTags()` in the example above, you can do this:

```
mvn test -Dtest=SampleTest#testTags
```

Also look at how to run tests via the [command-line](#command-line) and the [parallel runner](#junit-5-parallel-execution).

### JUnit HTML report
When you use a JUnit runner - after the execution of each feature, an HTML report is output to the `target/karate-reports` folder and the full path will be printed to the console (see [video](https://twitter.com/KarateDSL/status/935029435140489216)).

```
html report: (paste into browser to view)
-----------------------------------------
file:///projects/myproject/target/karate-reports/mypackage.myfeature.html
```

You can easily select (double-click), copy and paste this `file:` URL into your browser address bar. This report is useful for troubleshooting and debugging a test because all requests and responses are shown in-line with the steps, along with error messages and the output of [`print`](#print) statements. Just re-fresh your browser window if you re-run the test.

## Command Line
Normally in dev mode, you will use your IDE to run a `*.feature` file directly or via the companion 'runner' JUnit Java class. When you have a 'runner' class in place, it would be possible to run it from the command-line as well.

Note that the `mvn test` command only runs test classes that follow the `*Test.java` [naming convention](#naming-conventions) by default. But you can choose a single test to run like this:

```
mvn test -Dtest=CatsRunner
```
### `karate.options`
When your Java test "runner" is linked to multiple feature files, which will be the case when you use the recommended [parallel runner](#parallel-execution), you can narrow down your scope to a single feature, scenario or directory via the command-line, useful in dev-mode. Note how even [tags](#tags) to exclude (or include) can be specified:

> Note that any `Feature` or `Scenario` with the special `@ignore` tag will be skipped by default.

```
mvn test "-Dkarate.options=--tags ~@skipme classpath:demo/cats/cats.feature" -Dtest=DemoTestParallel
```

Multiple feature files (or paths) can be specified, de-limited by the space character. They should be at the end of the `karate.options`. To run only a single scenario, append the line number on which the scenario is defined, de-limited by `:`.
```
mvn test "-Dkarate.options=PathToFeatureFiles/order.feature:12" -Dtest=DemoTestParallel
```

### Test Suites
> The recommended way to define and run test-suites and reporting in Karate is to use the [parallel runner](#parallel-execution), described in the next section. The approach in this section is more suited for troubleshooting in dev-mode, using your IDE.

One way to define 'test-suites' in Karate is to have a JUnit class at a level 'above' (in terms of folder hierarchy) all the `*.feature` files in your project. So if you take the previous [folder structure example](#naming-conventions), you can do this on the command-line:

```
mvn test "-Dkarate.options=--tags ~@skipme" -Dtest=AnimalsTest
```

Here, `AnimalsTest` is the name of the Java class we designated to run the multiple `*.feature` files that make up your test-suite. There is a neat way to [tag your tests](#tags) and the above example demonstrates how to run all tests _except_ the ones tagged `@skipme`.

Note that the special, built-in tag `@ignore` will *always* be skipped by default, and you don't need to specify `~@ignore` anywhere.

You can 'lock down' the fact that you only want to execute the single JUnit class that functions as a test-suite - by using the following [maven-surefire-plugin configuration](http://maven.apache.org/surefire/maven-surefire-plugin/examples/inclusion-exclusion.html):

```xml
<plugin>
    <groupId>org.apache.maven.plugins</groupId>
    <artifactId>maven-surefire-plugin</artifactId>
    <version>${maven.surefire.version}</version>
    <configuration>
        <includes>
            <include>animals/AnimalsTest.java</include>
        </includes>
        <systemProperties>
            <karate.options>--tags @smoke</karate.options>
        </systemProperties>            
    </configuration>
</plugin> 
```

Note how the [`karate.options`](#karateoptions) can be specified using the `<systemProperties>` configuration.

## Parallel Execution
Karate can run tests in parallel, and dramatically cut down execution time. This is a 'core' feature and does not depend on JUnit, Maven or Gradle.

* You can easily "choose" features and tags to run and compose test-suites in a very flexible manner.
* You can use the returned `Results` object to check if any scenarios failed, and to even summarize the errors
* [JUnit XML](https://wiki.jenkins-ci.org/display/JENKINS/JUnit+Plugin) reports can be generated in the "`reportDir`" path you specify, and you can easily configure your CI to look for these files after a build (for e.g. in `**/*.xml` or `**/karate-reports/*.xml`). Note that you have to call the `outputJunitXml(true)` method on the `Runner` "builder".
* [Cucumber JSON reports](https://relishapp.com/cucumber/cucumber/docs/formatters/json-output-formatter) can be generated, except that the extension will be `.json` instead of `.xml`. Note that you have to call the `outputCucumberJson(true)` method on the `Runner` "builder".

### JUnit 5 Parallel Execution
For [JUnit 5](#junit-5) you can omit the `public` modifier for the class and method, and there are some changes to `import` package names. The method signature of the `assertTrue` has flipped around a bit. Also note that you don't use `@Karate.Test` for the method, and you just use the *normal* JUnit 5 `@Test` annotation.

Else the `Runner.path()` "builder" API is the same, refer the description above for [JUnit 4](#junit-4-parallel-execution).

```java
import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

class TestParallel {

    @Test
    void testParallel() {
        Results results = Runner.path("classpath:animals").tags("~@skipme").parallel(5);
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }

}
```

### Parallel Stats
For convenience, some stats are logged to the console when execution completes, which should look something like this:

```
======================================================
elapsed:   2.35 | threads:    5 | thread time: 4.98 
features:    54 | ignored:   25 | efficiency: 0.42
scenarios:  145 | passed:   145 | failed: 0
======================================================
```

The parallel runner will always run `Feature`-s in parallel. Karate will also run `Scenario`-s in parallel by default. So if you have a `Feature` with multiple `Scenario`-s in it - they will execute in parallel, and even each `Examples` row in a `Scenario Outline` will do so !

A `karate-timeline.html` file will also be saved to the report output directory mentioned above (`target/karate-reports` by default) - which is useful for visually verifying or troubleshooting the effectiveness of the test-run ([see video](https://twitter.com/KarateDSL/status/1049321708241317888)).

### `@parallel=false`
In rare cases you may want to suppress the default of `Scenario`-s executing in parallel and the special [`tag`](#tags) `@parallel=false` can be used. If you place it above the [`Feature`](#script-structure) keyword, it will apply to all `Scenario`-s. And if you just want one or two `Scenario`-s to NOT run in parallel, you can place this tag above only *those* `Scenario`-s. See [example](karate-demo/src/test/java/demo/encoding/encoding.feature).

Note that forcing `Scenario`-s to run in a particular sequence [is an anti-pattern](https://stackoverflow.com/a/46080568/143475), and should be avoided as far as possible.

## Test Reports
As mentioned above, most CI tools would be able to process the JUnit XML output of the [parallel runner](#parallel-execution) and determine the status of the build as well as generate reports.

The [Karate Demo](karate-demo) has a working example of the recommended parallel-runner set up. It also [details how](karate-demo#example-report) a third-party library can be easily used to generate some very nice-looking reports, from the JSON output of the parallel runner.

For example, here below is an actual report generated by the [cucumber-reporting](https://github.com/damianszczepanik/cucumber-reporting) open-source library.

<img src="src/main/resources/karate-maven-report.jpg" height="600px"/>

The demo also features [code-coverage using Jacoco](karate-demo#code-coverage-using-jacoco), and some tips for even non-Java back-ends. Some third-party report-server solutions integrate with Karate such as [ReportPortal.io](https://github.com/reportportal/agent-java-karate).

## Logging
> This is optional, and Karate will work without the logging config in place, but the default console logging may be too verbose for your needs.

Karate uses [LOGBack](http://logback.qos.ch) which looks for a file called `logback-test.xml` on the '[classpath](#classpath)'.

> In rare cases, e.g. if you are using Karate to create a Java application, [LOGBack will look for `logback.xml`](http://logback.qos.ch/manual/configuration.html)

Here is a sample `logback-test.xml` for you to get started.
```xml
<?xml version="1.0" encoding="UTF-8"?>
<configuration>
 
    <appender name="STDOUT" class="ch.qos.logback.core.ConsoleAppender">
        <encoder>
            <pattern>%d{HH:mm:ss.SSS} [%thread] %-5level %logger{36} - %msg%n</pattern>
        </encoder>
    </appender>
  
    <appender name="FILE" class="ch.qos.logback.core.FileAppender">
        <file>target/karate.log</file>
        <encoder>
            <pattern>%d{HH:mm:ss.SSS} [%thread] %-5level %logger{36} - %msg%n</pattern>
        </encoder>
    </appender>    
   
    <logger name="com.intuit.karate" level="DEBUG"/>
   
    <root level="info">
        <appender-ref ref="STDOUT" />
        <appender-ref ref="FILE" />
    </root>
  
</configuration>
```
You can change the `com.intuit.karate` logger level to `INFO` to reduce the amount of logging. When the level is `DEBUG` the entire request and response payloads are logged. If you use the above config, logs will be captured in `target/karate.log`.

If you want to keep the level as `DEBUG` ([for HTML reports](#test-reports)) but suppress logging to the console, you can comment out the `STDOUT` "root" `appender-ref`:

```xml
  <root level="warn">
      <!-- <appender-ref ref="STDOUT" /> -->
      <appender-ref ref="FILE" />
  </root>
```

Or another option is to use a [`ThresholdFilter`](http://logback.qos.ch/manual/filters.html#thresholdFilter), so you still see critical logs on the console:

```xml
  <appender name="STDOUT" class="ch.qos.logback.core.ConsoleAppender">
      <filter class="ch.qos.logback.classic.filter.ThresholdFilter">
          <level>WARN</level>
      </filter>
      <encoder>
          <pattern>%d{HH:mm:ss.SSS} [%thread] %-5level %logger{36} - %msg%n</pattern>
      </encoder>
  </appender>
```

If you want to exclude the logs from your CI/CD pipeline but keep them in the execution of your users in their locals you can configure your logback using [Janino](http://logback.qos.ch/manual/configuration.html#conditional). In such cases it might be desirable to have your tests using `karate.logger.debug('your additional info')` instead of the `print` keyword so you can keep logs in your pipeline in INFO.

For suppressing sensitive information such as secrets and passwords from the log, see [Log Masking](#log-masking).

# Configuration
> You can skip this section and jump straight to the [Syntax Guide](#syntax-guide) if you are in a hurry to get started with Karate. Things will work even if the `karate-config.js` file is not present.

## Classpath
The 'classpath' is a Java concept and is where some configuration files such as the one for [logging](#logging) are expected to be by default. If you use the Maven `<test-resources>` tweak [described earlier](#folder-structure) (recommended), the 'root' of the classpath will be in the `src/test/java` folder, or else would be `src/test/resources`.

## `karate-config.js`
The only 'rule' is that on start-up Karate expects a file called `karate-config.js` to exist on the 'classpath' and contain a [JavaScript function](#javascript-functions). The function is expected to return a JSON object and all keys and values in that JSON object will be made available as script variables.

And that's all there is to Karate configuration ! You can easily get the value of the [current 'environment' or 'profile'](#switching-the-environment), and then set up 'global' variables using some simple JavaScript. Here is an example:

```javascript    
function fn() {   
  var env = karate.env; // get java system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev'; // a custom 'intelligent' default
  }
  var config = { // base config JSON
    appId: 'my.app.id',
    appSecret: 'my.secret',
    someUrlBase: 'https://some-host.com/v1/auth/',
    anotherUrlBase: 'https://another-host.com/v1/'
  };
  if (env == 'stage') {
    // over-ride only those that need to be
    config.someUrlBase = 'https://stage-host/v1/auth';
  } else if (env == 'e2e') {
    config.someUrlBase = 'https://e2e-host/v1/auth';
  }
  // don't waste time waiting for a connection or if servers don't respond within 5 seconds
  karate.configure('connectTimeout', 5000);
  karate.configure('readTimeout', 5000);
  return config;
}
```

> Here above, you see the [`karate.log()`](#karate-log), [`karate.env`](#karate-env) and [`karate.configure()`](#karate-configure) "helpers" being used. Note that the `karate-config.js` is re-processed for *every* `Scenario` and in rare cases, you may want to initialize (e.g. auth tokens) only once for all of your tests. This can be achieved using [`karate.callSingle()`](#karatecallsingle).

A common requirement is to pass dynamic parameter values via the command line, and you can use the [`karate.properties['some.name']`](#karate-properties) syntax for getting a system property passed via JVM options in the form `-Dsome.name=foo`. Refer to the section on [dynamic port numbers](#dynamic-port-numbers) for an example.

> You can even retrieve operating-system environment variables via [Java interop](#calling-java) as follows: `var systemPath = java.lang.System.getenv('PATH');`

This decision to use JavaScript for config is influenced by years of experience with the set-up of complicated test-suites and fighting with [Maven profiles](http://maven.apache.org/guides/introduction/introduction-to-profiles.html), [Maven resource-filtering](https://maven.apache.org/plugins/maven-resources-plugin/examples/filter.html) and the XML-soup that somehow gets summoned by the [Maven AntRun plugin](http://maven.apache.org/plugins/maven-antrun-plugin/usage.html).

Karate's approach frees you from Maven, is far more expressive, allows you to eyeball all environments in one place, and is still a plain-text file.  If you want, you could even create [nested chunks of JSON that 'name-space' your config variables](https://stackoverflow.com/a/49693808/143475).

> One way to appreciate Karate's approach is to think over what it takes to add a new environment-dependent variable (e.g. a password) into a test. In typical frameworks it could mean changing multiple properties files, maven profiles and placeholders, and maybe even threading the value via a dependency-injection framework - before you can even access the value within your test.

This approach is indeed slightly more complicated than traditional `*.properties` files - but you _need_ this complexity. Keep in mind that these are tests (not production code) and this config is going to be maintained more by the dev or QE team instead of the 'ops' or operations team.

And there is no more worrying about Maven profiles and whether the 'right' `*.properties` file has been copied to the proper place.

## Switching the Environment
There is only one thing you need to do to switch the environment - which is to set a Java system property.

> By default, the value of `karate.env` when you access it within [`karate-config.js`](#karate-configjs) - would be `null`.

The recipe for doing this when running Maven from the command line is:
```
mvn test -DargLine="-Dkarate.env=e2e"
```

You can refer to the documentation of the
[Maven Surefire Plugin](http://maven.apache.org/plugins-archives/maven-surefire-plugin-2.12.4/examples/system-properties.html) for alternate ways of achieving this, but the `argLine` approach is the simplest and should be more than sufficient for your Continuous Integration or test-automation needs.

Here's a reminder that running any [single JUnit test via Maven](https://maven.apache.org/surefire/maven-surefire-plugin/examples/single-test.html) can be done by:
```
mvn test -Dtest=CatsRunner
```
Where `CatsRunner` is the JUnit class name (in any package) you wish to run.

Karate is flexible, you can easily over-write config variables within each individual test-script - which is very convenient when in dev-mode or rapid-prototyping.

```java
System.setProperty("karate.env", "pre-prod");
```

For advanced users, note that [tags](#tags) and the `karate.env` environment-switch can be "linked" using the special [environment tags](#environment-tags).

## Environment Specific Config
When your project gets complex, you can have separate `karate-config-<env>.js` files that will be processed for that specific value of [`karate.env`](#switching-the-environment). This is especially useful when you want to maintain passwords, secrets or even URL-s specific for your local dev environment.

> Make sure you configure your source code management system (e.g. Git) to ignore `karate-config-*.js` if needed.

> There should always be `karate-config.js` in the "root" folder, even if you don't have any "common" config. In such cases, the function can do nothing or return an empty JSON. [Learn more](https://github.com/intuit/karate/issues/1588).

Here are the rules Karate uses on bootstrap (before every `Scenario` or `Examples` row in a `Scenario Outline`):

* if the system-property `karate.config.dir` was set, Karate will look in this folder for `karate-config.js` - and if found, will process it
* else if `karate-config.js` was not found in the above location (or `karate.config.dir` was not set), [`classpath:karate-config.js`](#configuration) would be processed (this is the default / common case)
* if the `karate.env` system property was set
    * if `karate.config.dir` was set, Karate will also look for `file:<karate.config.dir>/karate-config-<env>.js`
    * else (if the `karate.config.dir` was *not* set), Karate will look for `classpath:karate-config-<env>.js`
* if the over-ride `karate-config-<env>.js` exists, it will be processed, and the configuration (JSON entries) returned by this function will over-ride any set by `karate-config.js`

Refer to the [karate demo](karate-demo) for an [example](karate-demo/src/test/java/karate-config-contract.js).

### `karate-base.js`
Advanced users who build frameworks on top of Karate have the option to supply a `karate-base.js` file that Karate will look for on the [`classpath:`](#classpath). This is useful when you ship a JAR file containing re-usable features and JavaScript / Java code and want to 'default' a few variables that teams can 'inherit' from. So an additional rule in the above flow of 'rules' (before the *first* step) is as follows:

* if `classpath:karate-base.js` exists - Karate will process this as a [configuration source](#configuration) before anything else

# Syntax Guide
## Script Structure
Karate scripts are technically in '[Gherkin](https://docs.cucumber.io/gherkin/reference/)' format - but all you need to grok as someone who needs to test web-services are the three sections: `Feature`, `Background` and `Scenario`. There can be multiple Scenario-s in a `*.feature` file, and at least one should be present. The `Background` is optional.

> Variables set using [`def`](#def) in the `Background` will be re-set before *every* `Scenario`. If you are looking for a way to do something only **once** per `Feature`, take a look at [`callonce`](#callonce). On the other hand, if you are expecting a variable in the `Background` to be modified by one `Scenario` so that later ones can see the updated value - that is *not* how you should think of them, and you should combine your 'flow' into one scenario. Keep in mind that you should be able to comment-out a `Scenario` or skip some via [`tags`](#tags) without impacting any others. Note that the [parallel runner](#parallel-execution) will run `Scenario`-s in parallel, which means they can run in *any* order. If you are looking for ways to do something only *once* per feature or across *all* your tests, see [Hooks](#hooks).

Lines that start with a `#` are comments.
```cucumber
Feature: brief description of what is being tested
    more lines of description if needed.

Background:
  # this section is optional !
  # steps here are executed before each Scenario in this file
  # variables defined here will be 'global' to all scenarios
  # and will be re-initialized before every scenario

Scenario: brief description of this scenario
  # steps for this scenario

Scenario: a different scenario
  # steps for this other scenario
```

> There is also a variant of `Scenario` called `Scenario Outline` along with `Examples`, useful for [data-driven tests](#data-driven-tests).

### Given-When-Then
The business of web-services testing requires access to low-level aspects such as HTTP headers, URL-paths, query-parameters, complex JSON or XML payloads and response-codes. And Karate gives you control over these aspects with the small set of keywords focused on HTTP such as [`url`](#url), [`path`](#path), [`param`](#param), etc.

Karate does not attempt to have tests be in "natural language" like how Cucumber tests are [traditionally expected to be](https://docs.cucumber.io/gherkin/reference/). That said, the syntax is very concise, and the convention of every step having to start with either `Given`, `And`, `When` or `Then`, makes things very readable. You end up with a decent approximation of BDD even though web-services by nature are "headless", without a UI, and not really human-friendly.

# Setting and Using Variables
## `def`
### Set a named variable
```cucumber
# assigning a string value:
Given def myVar = 'world'

# using a variable
Then print myVar

# assigning a number (you can use '*' instead of Given / When / Then)
* def myNum = 5
```
Note that `def` will over-write any variable that was using the same name earlier. Keep in mind that the start-up [configuration routine](#configuration) could have already initialized some variables before the script even started. For details of scope and visibility of variables, see [Script Structure](#script-structure).

> Note that `url` and `request` are not allowed as variable names. This is just to reduce confusion for users new to Karate who tend to do `* def request = {}` and expect the [`request`](#request) body or similarly, the [`url`](#url) to be set.

The examples above are simple, but a variety of expression 'shapes' are supported on the right hand side of the `=` symbol. The section on [Karate Expressions](#karate-expressions) goes into the details.

## `assert`
### Assert if an expression evaluates to `true`
Once defined, you can refer to a variable by name. Expressions are evaluated using the embedded JavaScript engine. The assert keyword can be used to assert that an expression returns a boolean value.

```cucumber
Given def color = 'red '
And def num = 5
Then assert color + num == 'red 5'
```
Everything to the right of the `assert` keyword will be evaluated as a single expression.

Something worth mentioning here is that you would hardly need to use `assert` in your test scripts. Instead you would typically use the [`match`](#match) keyword, that is designed for performing powerful assertions against JSON and XML response payloads.

## `print`
### Log to the console
You can use `print` to log variables to the console in the middle of a script. For convenience, you can have multiple expressions separated by commas, so this is the recommended pattern:

```cucumber
* print 'the value of a is:', a
```

Similar to [`assert`](#assert), the expressions on the right-hand-side of a `print` have to be valid JavaScript. JsonPath and [Karate expressions](#karate-expressions) are not supported.

If you use commas (instead of concatenating strings using `+`), Karate will 'pretty-print' variables, which is what you typically want when dealing with [JSON or XML](#native-data-types).

```cucumber
* def myJson = { foo: 'bar', baz: [1, 2, 3] }
* print 'the value of myJson is:', myJson
```
Which results in the following output:
```
20:29:11.290 [main] INFO  com.intuit.karate - [print] the value of myJson is: {
  "foo": "bar",
  "baz": [
    1,
    2,
    3
  ]
}
```

> Since XML is represented internally as a JSON-like or map-like object, if you perform string concatenation when printing, you will *not* see XML - which can be confusing at first. Use the comma-delimited form (see above) or the JS helper (see below).

The built-in [`karate` object](#the-karate-object) is explained in detail later, but for now, note that this is also injected into `print` (and even `assert`) statements, and it has a helpful [`pretty`](#karate-pretty) method, that takes a JSON argument and a [`prettyXml`](#karate-prettyxml) method that deals with XML. So you could have also done something like:

```cucumber
* print 'the value of myJson is:\n' + karate.pretty(myJson)
```

Also refer to the [`configure`](#configure) keyword on how to switch on pretty-printing of all HTTP requests and responses.

# 'Native' data types
Native data types mean that you can insert them into a script without having to worry about enclosing them in strings and then having to 'escape' double-quotes all over the place. They seamlessly fit 'in-line' within your test script.

## JSON
Note that the parser is 'lenient' so that you don't have to enclose all keys in double-quotes.
```cucumber
* def cat = { name: 'Billie', scores: [2, 5] }
* assert cat.scores[1] == 5
```

> Some characters such as the hyphen `-` are not permitted in 'lenient' JSON keys (because they are interpreted by the JS engine as a 'minus sign'). In such cases, you *have* to use string quotes: `{ 'Content-Type': 'application/json' }`

When asserting for expected values in JSON or XML, always prefer using [`match`](#match) instead of [`assert`](#assert). Match failure messages are much more descriptive and useful, and you get the power of [embedded expressions](#embedded-expressions) and [fuzzy matching](#fuzzy-matching).
```cucumber
* def cats = [{ name: 'Billie' }, { name: 'Bob' }]
* match cats[1] == { name: 'Bob' }
```

Karate's native support for JSON means that you can assign parts of a JSON instance into another variable, which is useful when dealing with complex [`response`](#response) payloads.
```cucumber
* def first = cats[0]
* match first == { name: 'Billie' }
```

For manipulating or updating JSON (or XML) using path expressions, refer to the [`set`](#set) keyword.

## XML
```cucumber
Given def cat = <cat><name>Billie</name><scores><score>2</score><score>5</score></scores></cat>
# sadly, xpath list indexes start from 1
Then match cat/cat/scores/score[2] == '5'
# but karate allows you to traverse xml like json !!
Then match cat.cat.scores.score[1] == 5
```

### Embedded Expressions
Karate has a very useful payload 'templating' approach. Variables can be referred to within JSON, for example:

```cucumber
Given def user = { name: 'john', age: 21 }
And def lang = 'en'
When def session = { name: '#(user.name)', locale: '#(lang)', sessionUser: '#(user)'  }
```
So the rule is - if a string value within a JSON (or XML) object declaration is enclosed between `#(` and `)` - it will be evaluated as a JavaScript expression. And any variables which are alive in the context can be used in this expression. Here's how it works for XML:

```cucumber
Given def user = <user><name>john</name></user>
And def lang = 'en'
When def session = <session><locale>#(lang)</locale><sessionUser>#(user)</sessionUser></session>
```

This comes in useful in some cases - and avoids needing to use the [`set`](#set) keyword or [JavaScript functions](#javascript-functions) to manipulate JSON. So you get the best of both worlds: the elegance of JSON to express complex nested data - while at the same time being able to dynamically plug values (that could even be other JSON or XML 'trees') into a 'template'.

Note that embedded expressions will be evaluated even when you [`read()` from a JSON or XML file](#reading-files). This is super-useful for re-use and data-driven tests.

A few special built-in variables such as `$` (which is a [reference to the JSON root](#referring-to-self)) - can be mixed into JSON embedded expressions.

A [special case](#remove-if-null) of embedded expressions can remove a JSON key (or XML element / attribute) if the expression evaluates to `null`.

#### Rules for Embedded Expressions
* They work only within JSON or XML
* and when on the Right Hand Side of a
    * [`def`](#def)
    * [`match`](#match)
    * [`configure`](#configure)
* and when you [`read()`](#reading-files) a JSON or XML file
* the expression *has* to start with `#(` and end with `)`

Because of the last rule above, note that string-concatenation may not work quite the way you expect:

```cucumber
# wrong !
* def foo = { bar: 'hello #(name)' }
# right !
* def foo = { bar: '#("hello " + name)' }
```

Observe how you can achieve string concatenation if you really want, because any valid JavaScript expression can be stuffed within an embedded expression. You could always do this in two steps:
```cucumber        
* def temp = 'hello ' + name
* def foo = { bar: '#(temp)' }
```

As a convenience, embedded expressions are supported on the Right Hand Side of a [`match`](#match) statement even for "quoted string" literals:
```cucumber
* def foo = 'a1'
* match foo == '#("a" + 1)'
```

And do note that in Karate 1.0 onwards, ES6 string-interpolation within "backticks" is supported:

```cucumber
* param filter = `ORDER_DATE:"${todaysDate}"`
```

### Enclosed JavaScript
An alternative to embedded expressions (for JSON only) is to enclose the entire payload within parentheses - which tells Karate to evaluate it as pure JavaScript. This can be a lot simpler than embedded expressions in many cases, and JavaScript programmers will feel right at home.

The example below shows the difference between embedded expressions and enclosed JavaScript:

```cucumber
When def user = { name: 'john', age: 21 }
And def lang = 'en'

* def embedded = { name: '#(user.name)', locale: '#(lang)', sessionUser: '#(user)' }
* def enclosed = ({ name: user.name, locale: lang, sessionUser: user })
* match embedded == enclosed
```

> So how would you choose between the two approaches to create JSON ? [Embedded expressions](#embedded-expressions) are useful when you have complex JSON [`read`](#reading-files) from files, because you can auto-replace (or even [remove](#remove-if-null)) data-elements with values dynamically evaluated from variables. And the JSON will still be 'well-formed', and editable in your IDE or text-editor. Embedded expressions also make more sense in [validation](#ignore-or-validate) and [schema-like](#schema-validation) short-cut situations. It can also be argued that the `#` symbol is easy to spot when eyeballing your test scripts - which makes things more readable and clear.

### Multi-Line Expressions
The keywords [`def`](#def), [`set`](#set), [`match`](#match), [`request`](#request) and [`eval`](#eval) take multi-line input as the last argument. This is useful when you want to express a one-off lengthy snippet of text in-line, without having to split it out into a separate [file](#reading-files). Note how triple-quotes (`"""`) are used to enclose content. Here are some examples:

```cucumber
# instead of:
* def cat = <cat><name>Billie</name><scores><score>2</score><score>5</score></scores></cat>

# this is more readable:
* def cat = 
  """
  <cat>
      <name>Billie</name>
      <scores>
          <score>2</score>
          <score>5</score>
      </scores>
  </cat>
  """
# example of a request payload in-line
Given request 
  """ 
  <?xml version='1.0' encoding='UTF-8'?>
  <S:Envelope xmlns:S="http://schemas.xmlsoap.org/soap/envelope/">
  <S:Body>
  <ns2:QueryUsageBalance xmlns:ns2="http://www.mycompany.com/usage/V1">
      <ns2:UsageBalance>
          <ns2:LicenseId>12341234</ns2:LicenseId>
      </ns2:UsageBalance>
  </ns2:QueryUsageBalance>
  </S:Body>
  </S:Envelope>
  """

# example of a payload assertion in-line
Then match response ==
  """
  { id: { domain: "DOM", type: "entityId", value: "#ignore" },
    created: { on: "#ignore" }, 
    lastUpdated: { on: "#ignore" },
    entityState: "ACTIVE"
  }
  """
```

## `table`
### A simple way to create JSON Arrays
Now that we have seen how JSON is a 'native' data type that Karate understands, there is a very nice way to create JSON using Cucumber's support for expressing [data-tables](http://www.thinkcode.se/blog/2014/06/30/cucumber-data-tables).

```cucumber
* table cats
  | name   | age |
  | 'Bob'  | 2   |
  | 'Wild' | 4   |
  | 'Nyan' | 3   |

* match cats == [{name: 'Bob', age: 2}, {name: 'Wild', age: 4}, {name: 'Nyan', age: 3}]
```

The [`match`](#match) keyword is explained later, but it should be clear right away how convenient the `table` keyword is. JSON can be combined with the ability to [call other `*.feature` files](#data-driven-features) to achieve dynamic data-driven testing in Karate.

Notice that in the above example, string values within the table need to be enclosed in quotes. Otherwise they would be evaluated as expressions - which does come in useful for some dynamic data-driven situations:

```cucumber
* def one = 'hello'
* def two = { baz: 'world' }
* table json
  | foo     | bar            |
  | one     | { baz: 1 }     |
  | two.baz | ['baz', 'ban'] |
* match json == [{ foo: 'hello', bar: { baz: 1 } }, { foo: 'world', bar: ['baz', 'ban'] }]
```
Yes, you can even nest chunks of JSON in tables, and things work as you would expect.

Empty cells or expressions that evaluate to `null` will result in the key being omitted from the JSON. To force a `null` value, wrap it in parentheses:
```cucumber
* def one = { baz: null }
* table json
  | foo     | bar    |
  | 'hello' |        |
  | one.baz | (null) |
  | 'world' | null   |
* match json == [{ foo: 'hello' }, { bar: null }, { foo: 'world' }]
```

An alternate way to create data is using the [`set` multiple](#set-multiple) syntax. It is actually a 'transpose' of the `table` approach, and can be very convenient when there are a large number of keys per row or if the nesting is complex. Here is an example of what is possible:

```cucumber
* set search
  | path       | 0        | 1      | 2       |
  | name.first | 'John'   | 'Jane' |         |
  | name.last  | 'Smith'  | 'Doe'  | 'Waldo' |
  | age        | 20       |        |         |

* match search[0] == { name: { first: 'John', last: 'Smith' }, age: 20 }
* match search[1] == { name: { first: 'Jane', last: 'Doe' } }
* match search[2] == { name: { last: 'Waldo' } }
```

## `text`
### Don't parse, treat as raw text
Not something you would commonly use, but in some cases you need to disable Karate's default behavior of attempting to parse anything that looks like JSON (or XML) when using [multi-line](#multi-line-expressions) / string [expressions](#karate-expressions). This is especially relevant when manipulating [GraphQL](http://graphql.org) queries - because although they look suspiciously like JSON, they are not, and tend to confuse Karate's internals. And as shown in the example below, having text 'in-line' is useful especially when you use the `Scenario Outline:` and `Examples:` for [data-driven tests](#data-driven-tests) involving Cucumber-style place-holder substitutions in strings.

```cucumber
Scenario Outline:
  # note the 'text' keyword instead of 'def'
  * text query =
    """
    {
      hero(name: "<name>") {
        height
        mass
      }
    }
    """
  Given path 'graphql'
  And request { query: '#(query)' }
  And header Accept = 'application/json'
  When method post
  Then status 200

  Examples:
    | name  |
    | John  |
    | Smith | 
```

Note that if you did not need to inject [`Examples:`](#data-driven-tests) into 'placeholders' enclosed within `<` and `>`, [reading from a file](#reading-files) with the extension `*.txt` may have been sufficient.

For placeholder-substitution, the [`replace`](#replace) keyword can be used instead, but with the advantage that the text can be read from a file or dynamically created.

Karate is a great fit for testing GraphQL because of how easy it is to deal with dynamic and deeply nested JSON responses. Refer to this example for more details: [`graphql.feature`](karate-demo/src/test/java/demo/graphql/graphql.feature).

## `replace`
### Text Placeholder Replacement
> Modifying existing JSON and XML is __natively__ supported by Karate via the [`set`](#set) keyword, and `replace` is primarily intended for dealing with raw strings. But when you deal with complex, nested JSON (or XML) - it may be easier in some cases to use `replace`, especially when you want to substitute multiple placeholders with one value, and when you don't need array manipulation. Since `replace` auto-converts the result to a string, make sure you perform [type conversion](#type-conversion) back to JSON (or XML) if applicable.

Karate provides an elegant 'native-like' experience for placeholder substitution within strings or text content. This is useful in any situation where you need to concatenate dynamic string fragments to form content such as GraphQL or SQL.

The placeholder format defaults to angle-brackets, for example: `<replaceMe>`. Here is how to replace one placeholder at a time:

```cucumber
* def text = 'hello <foo> world'
* replace text.foo = 'bar'
* match text == 'hello bar world'
```

Karate makes it really easy to substitute multiple placeholders in a single, readable step as follows:

```cucumber
* def text = 'hello <one> world <two> bye'

* replace text
  | token | value   |
  | one   | 'cruel' |
  | two   | 'good'  |

* match text == 'hello cruel world good bye'
```

Note how strings have to be enclosed in quotes. This is so that you can mix expressions into text replacements as shown below. This example also shows how you can use a custom placeholder format instead of the default:

```cucumber
* def text = 'hello <one> world ${two} bye'
* def first = 'cruel'
* def json = { second: 'good' }

* replace text
    | token  | value       |
    | one    | first       |
    | ${two} | json.second |

* match text == 'hello cruel world good bye'
```
Refer to this file for a detailed example: [`replace.feature`](karate-junit4/src/test/java/com/intuit/karate/junit4/demos/replace.feature)

## YAML Files
For those who may prefer [YAML](http://yaml.org) as a simpler way to represent data, Karate allows you to read YAML content from a [file](#reading-files) - and it will be auto-converted into JSON.

```cucumber
# yaml from a file (the extension matters), and the data-type of 'bar' would be JSON
* def bar = read('data.yaml')
```

### `yaml`
A very rare need is to be able to convert a string which happens to be in YAML form into JSON, and this can be done via the `yaml` type cast keyword. For example - if a response data element or downloaded file is YAML and you need to use the data in subsequent steps. Also see [type conversion](#type-conversion).

```cucumber
* text foo =
  """
  name: John
  input:
    id: 1
    subType: 
      name: Smith
      deleted: false
  """
# yaml to json type conversion  
* yaml foo = foo
* match foo ==
  """
  {
    name: 'John',
    input: { 
      id: 1,
      subType: { name: 'Smith', deleted: false }    
    }
  }
  """
```

## CSV Files
Karate can read `*.csv` files and will auto-convert them to JSON. A header row is always expected. See the section on [reading files](#reading-files) - and also this example [`dynamic-csv.feature`](karate-demo/src/test/java/demo/outline/dynamic-csv.feature), which shows off the convenience of [dynamic `Scenario Outline`-s](#dynamic-scenario-outline).

In rare cases you may want to use a csv-file as-is and *not* auto-convert it to JSON. A good example is when you want to use a CSV file as the [request-body](#request) for a file-upload. You could get by by renaming the file-extension to say `*.txt` but an alternative is to use the [`karate.readAsString()`](#read-file-as-string) API.

### `csv`
Just like [`yaml`](#yaml), you may occasionally need to [convert a string](#type-conversion) which happens to be in CSV form into JSON, and this can be done via the `csv` keyword.

```cucumber
* text foo =
    """
    name,type
    Billie,LOL
    Bob,Wild
    """
* csv bar = foo
* match bar == [{ name: 'Billie', type: 'LOL' }, { name: 'Bob', type: 'Wild' }]
```

## JavaScript Functions
JavaScript Functions are also 'native'. And yes, functions can take arguments.

> Standard JavaScript syntax rules apply, but the right-hand-side should begin with the `function` keyword if declared *in-line*. When using stand-alone `*.js` files, you can have a comment before the `function` keyword, and you can use `fn` as the function name, so that your IDE does not complain about JavaScript syntax errors, e.g. `function fn(x){ return x + 1 }`

```cucumber
* def greeter = function(title, name) { return 'hello ' + title + ' ' + name }
* assert greeter('Mr.', 'Bob') == 'hello Mr. Bob'
```

> When JavaScript executes in Karate, the built-in [`karate` object](#the-karate-object) provides some commonly used utility functions. And with [Karate expressions](#karate-expressions), you can "dive into" JavaScript without needing to define a function - and [conditional logic](#conditional-logic) is a good example.

### Java Interop
For more complex functions you are better off using the [multi-line](#multi-line-expressions) 'doc-string' approach. This example actually calls into existing Java code, and being able to do this opens up a whole lot of possibilities. The JavaScript interpreter will try to convert types across Java and JavaScript as smartly as possible. For e.g. JSON objects become Java `Map`-s, JSON arrays become Java `List`-s, and Java Bean properties are accessible (and update-able) using 'dot notation' e.g. '`object.name`'

```cucumber
* def dateStringToLong =
  """
  function(s) {
    var SimpleDateFormat = Java.type('java.text.SimpleDateFormat');
    var sdf = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ");
    return sdf.parse(s).time; // '.getTime()' would also have worked instead of '.time'
  } 
  """
* assert dateStringToLong("2016-12-24T03:39:21.081+0000") == 1482550761081
```

> More examples of Java interop and how to invoke custom code can be found in the section on [Calling Java](#calling-java).

The `call` keyword provides an [alternate way of calling JavaScript functions](#calling-javascript-functions) that have only one argument. The argument can be provided after the function name, without parentheses, which makes things slightly more readable (and less cluttered) especially when the solitary argument is JSON.

```cucumber
* def timeLong = call dateStringToLong '2016-12-24T03:39:21.081+0000'
* assert timeLong == 1482550761081

# a better example, with a JSON argument
* def greeter = function(name){ return 'Hello ' + name.first + ' ' + name.last + '!' }
* def greeting = call greeter { first: 'John', last: 'Smith' }
```

## Reading Files
Karate makes re-use of payload data, utility-functions and even other test-scripts as easy as possible. Teams typically define complicated JSON (or XML) payloads in a file and then re-use this in multiple scripts. Keywords such as [`set`](#set) and [`remove`](#remove) allow you to to 'tweak' payload-data to fit the scenario under test. You can imagine how this greatly simplifies setting up tests for boundary conditions. And such re-use makes it easier to re-factor tests when needed, which is great for maintainability.

> Note that the [`set` (multiple)](#set-multiple) keyword can build complex, nested JSON (or XML) from scratch in a data-driven manner, and you may not even need to read from files for many situations. Test data can be within the main flow itself, which makes scripts highly readable.

Reading files is achieved using the built-in JavaScript function called `read()`. By default, the file is expected to be in the same folder (package) and side-by-side with the `*.feature` file. But you can prefix the name with `classpath:` in which case the ['root' folder](#classpath) would be `src/test/java` (assuming you are using the [recommended folder structure](#folder-structure)).

Prefer [`classpath:`](#classpath) when a file is expected to be heavily re-used all across your project.  And yes, relative paths will work.

```cucumber
# json
* def someJson = read('some-json.json')
* def moreJson = read('classpath:more-json.json')

# xml
* def someXml = read('../common/my-xml.xml')

# import yaml (will be converted to json)
* def jsonFromYaml = read('some-data.yaml')

# csv (will be converted to json)
* def jsonFromCsv = read('some-data.csv')

# string
* def someString = read('classpath:messages.txt')

# javascript (will be evaluated)
* def someValue = read('some-js-code.js')

# if the js file evaluates to a function, it can be re-used later using the 'call' keyword
* def someFunction = read('classpath:some-reusable-code.js')
* def someCallResult = call someFunction

# the following short-cut is also allowed
* def someCallResult = call read('some-js-code.js')
```

You can also [re-use other `*.feature`](#calling-other-feature-files) files from test-scripts:

```cucumber
# perfect for all those common authentication or 'set up' flows
* def result = call read('classpath:some-reusable-steps.feature')
```

When a *called* feature depends on some side-by-side resources such as JSON or JS files, you can use the `this:` prefix to ensure that relative paths work correctly - because by default Karate calculates relative paths from the "root" feature or the top-most "caller".

```cucumber
* def data = read('this:payload.json')
```

If a file does not end in `.json`, `.xml`, `.yaml`, `.js`, `.csv` or `.txt`, it is treated as a stream - which is typically what you would need for [`multipart`](#multipart-field) file uploads.

```cucumber
* def someStream = read('some-pdf.pdf')
```

> The `.graphql` and `.gql` extensions are also recognized (for GraphQL) but are handled the same way as `.txt` and treated as a string.

For JSON and XML files, Karate will evaluate any [embedded expressions](#embedded-expressions) on load. This enables more concise tests, and the file can be re-usable in multiple, data-driven tests.

Since it is internally implemented as a JavaScript function, you can mix calls to `read()` freely wherever JavaScript expressions are allowed:

```cucumber
* def someBigString = read('first.txt') + read('second.txt')
```

> Tip: you can even use JS expressions to dynamically choose a file based on some condition: `* def someConfig = read('my-config-' + someVariable + '.json')`. Refer to [conditional logic](#conditional-logic) for more ideas.

And a very common need would be to use a file as the [`request`](#request) body:

```cucumber
Given request read('some-big-payload.json')
```

Or in a [`match`](#match):

```cucumber
And match response == read('expected-response-payload.json')
```

The rarely used `file:` prefix is also supported. You could use it for 'hard-coded' absolute paths in dev mode, but is obviously not recommended for CI test-suites. A good example of where you may need this is if you programmatically write a file to the `target` folder, and then you can read it like this:

```cucumber
* def payload = read('file:target/large.xml')
```

To summarize the possible prefixes:

| Prefix       | Description                                                                                     |
|--------------|-------------------------------------------------------------------------------------------------|
| `classpath:` | relative to the [classpath](#classpath), recommended for re-usable features                     |
| `file:`      | do not use this unless you know what you are doing, see above                                   |
| `this:`      | when in a *called* feature, ensure that files are resolved relative to the current feature file |

Take a look at the [Karate Demos](karate-demo) for real-life examples of how you can use files for validating HTTP responses, like this one: [`read-files.feature`](karate-demo/src/test/java/demo/read/read-files.feature).

### Read File As String
In some rare cases where you don't want to auto-convert JSON, XML, YAML or CSV, and just get the raw string content (without having to re-name the file to end with `.txt`) - you can use the [`karate.readAsString()`](#karate-readasstring) API. Here is an example of using a CSV file as the request-body:

```cucumber
Given path 'upload'
And header Content-Type = 'text/csv'
And request karate.readAsString('classpath:my.csv')
When method post
Then status 202
```

## Type Conversion
> Best practice is to stick to using only [`def`](#def) unless there is a very good reason to do otherwise.

Internally, Karate will auto-convert JSON (and even XML) to Java `Map` objects. And JSON arrays would become Java `List`-s. But you will never need to worry about this internal data-representation most of the time.

In some rare cases, for e.g. if you acquired a string from some external source, or if you generated JSON (or XML) by concatenating text or using [`replace`](#replace), you may want to convert a string to JSON and vice-versa. You can even perform a conversion from XML to JSON if you want.

One example of when you may want to convert JSON (or XML) to a string is when you are passing a payload to custom code via [Java interop](#calling-java). Do note that when passing JSON, the default `Map` and `List` representations should suffice for most needs ([see example](karate-demo/src/test/java/demo/java/cats-java.feature)), and using them would avoid un-necessary string-conversion.

So you have the following type markers you can use instead of [`def`](#def) (or the rarely used [`text`](#text)). The first four below are best explained in this example file: [`type-conv.feature`](karate-junit4/src/test/java/com/intuit/karate/junit4/demos/type-conv.feature).

* <a name="type-string"><code>string</code></a> - convert JSON or any other data-type (except XML) to a string
* <a name="type-json"><code>json</code></a> - convert XML, a map-like or list-like object, a string, or even a Java object into JSON
* <a name="type-xml"><code>xml</code></a> - convert JSON, a map-like object, a string, or even a Java object into XML
* <a name="type-xmlstring"><code>xmlstring</code></a> - specifically for converting the map-like Karate internal representation of XML into a string
* <a name="type-csv"><code>csv</code></a> - convert a CSV string into JSON, see [`csv`](#csv)
* <a name="type-yaml"><code>yaml</code></a> - convert a YAML string into JSON, see [`yaml`](#yaml)
* <a name="type-bytes"><code>bytes</code></a> - convert to a byte-array, useful for binary payloads or comparisons, see [example](karate-demo/src/test/java/demo/websocket/echo.feature)
* <a name="type-copy"><code>copy</code></a> - to clone a given payload variable reference (JSON, XML, Map or List), refer: [`copy`](#copy)

If you want to 'pretty print' a JSON or XML value with indenting, refer to the documentation of the [`print`](#print) keyword.

### Floats and Integers
While converting a number to a string is easy (just concatenate an empty string e.g. `myInt + ''`), in some rare cases, you may need to convert a string to a number. You can do this by multiplying by `1` or using the built-in JavaScript `parseInt()` function:

```cucumber
* def foo = '10'
* string json = { bar: '#(1 * foo)' }
* match json == '{"bar":10.0}'

* string json = { bar: '#(parseInt(foo))' }
* match json == '{"bar":10.0}'
```

As per the JSON spec, all numeric values are treated as doubles, so for integers - it really doesn't matter if there is a decimal point or not. In fact it may be a good idea to slip doubles instead of integers into some of your tests ! Anyway, there are times when you may want to force integers (perhaps for cosmetic reasons) and you can easily do so using the 'double-tilde' [short-cut: '`~~`'](http://rocha.la/JavaScript-bitwise-operators-in-practice).

```cucumber
* def foo = '10'
* string json = { bar: '#(~~foo)' }
* match json == '{"bar":10}'

# JS math can introduce a decimal point in some cases
* def foo = 100
* string json = { bar: '#(foo * 0.1)' }
* match json == '{"bar":10.0}'

# but you can easily coerce to an integer if needed
* string json = { bar: '#(~~(foo * 0.1))' }
* match json == '{"bar":10}'
```

### Large Numbers
Sometimes when dealing with very large numbers, the JS engine may mangle the number into scientific notation:

```cucumber
* def big = 123123123123
* string json = { num: '#(big)' }
* match json == '{"num":1.23123123123E11}'
```

This can be easily solved by using `java.math.BigDecimal`:

```cucumber
* def big = new java.math.BigDecimal(123123123123)
* string json = { num: '#(big)' }
* match json == '{"num":123123123123}'
```

# Karate Expressions
Before we get to the HTTP keywords, it is worth doing a recap of the various 'shapes' that the right-hand-side of an assignment statement can take:

| Example                                         | Shape                  | Description                                                                                                                                                                                                                                                                                    |
|-------------------------------------------------|------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `* def foo = 'bar'`                             | JS                     | simple strings, numbers or booleans                                                                                                                                                                                                                                                            |
| `* def foo = 'bar' + baz[0]`                    | JS                     | any valid JavaScript expression, and variables can be mixed in, another example: `bar.length + 1`                                                                                                                                                                                              |
| `* def foo = { bar: '#(baz)' }`                 | JSON                   | anything that starts with a `{` or a `[` is parsed as JSON, use [`text`](#text) instead of [`def`](#def) if you need to suppress the default behavior                                                                                                                                          |
| `* def foo = ({ bar: baz })`                    | JS                     | [enclosed JavaScript](#enclosed-javascript), the result of which is exactly equivalent to the above                                                                                                                                                                                            |
| `* def foo = <foo>bar</foo>`                    | XML                    | anything that starts with a `<` is parsed as XML, use [`text`](#text) instead of [`def`](#def) if you need to suppress the default behavior                                                                                                                                                    |
| `* def foo = function(arg){ return arg + bar }` | JS Fn                  | anything that starts with `function(...){` is parsed as a JS function.                                                                                                                                                                                                                         |
| `* def foo = read('bar.json')`                  | JS                     | using the built-in [`read()`](#reading-files) function                                                                                                                                                                                                                                         |
| `* def foo = $.bar[0]`                          | JsonPath               | short-cut JsonPath on the [`response`](#response)                                                                                                                                                                                                                                              |
| `* def foo = /bar/baz`                          | XPath                  | short-cut XPath on the [`response`](#response)                                                                                                                                                                                                                                                 |
| `* def foo = get bar $..baz[?(@.ban)]`          | [`get`](#get) JsonPath | [JsonPath](https://github.com/json-path/JsonPath#path-examples) on the variable `bar`, you can also use [`get[0]`](#get-plus-index) to get the first item if the JsonPath evaluates to an array - especially useful when using wildcards such as `[*]` or [filter-criteria](#jsonpath-filters) |
| `* def foo = $bar..baz[?(@.ban)]`               | $var.JsonPath          | [convenience short-cut](#get-short-cut) for the above                                                                                                                                                                                                                                          |
| `* def foo = get bar count(/baz//ban)`          | [`get`](#get) XPath    | XPath on the variable `bar`                                                                                                                                                                                                                                                                    |
| `* def foo = karate.pretty(bar)`                | JS                     | using the [built-in `karate` object](#the-karate-object) in JS expressions                                                                                                                                                                                                                     |
| `* def Foo = Java.type('com.mycompany.Foo')`    | JS-Java                | [Java Interop](#java-interop), and even package-name-spaced one-liners like `java.lang.System.currentTimeMillis()` are possible                                                                                                                                                                |
| `* def foo = call bar { baz: '#(ban)' }`        | [`call`](#call)        | or [`callonce`](#callonce), where expressions like [`read('foo.js')`](#reading-files) are allowed as the object to be called or the argument                                                                                                                                                   |
| `* def foo = bar({ baz: ban })`                 | JS                     | equivalent to the above, JavaScript function invocation                                                                                                                                                                                                                                        |

# Core Keywords
They are `url`, `path`, `request`, `method` and `status`.

These are essential HTTP operations, they focus on setting one (un-named or 'key-less') value at a time and therefore don't need an `=` sign in the syntax.

## `url`
```cucumber
Given url 'https://myhost.com/v1/cats'
```
A URL remains constant until you use the `url` keyword again, so this is a good place to set-up the 'non-changing' parts of your REST URL-s.

A URL can take expressions, so the approach below is legal.  And yes, variables can come from global [config](#configuration).
```cucumber
Given url 'https://' + e2eHostName + '/v1/api'
```

If you are trying to build dynamic URLs including query-string parameters in the form: `http://myhost/some/path?foo=bar&search=true` - please refer to the [`param`](#param) keyword.

## `path`
REST-style path parameters.  Can be expressions that will be evaluated.  Comma delimited values are supported which can be more convenient, and takes care of URL-encoding and appending '/' between path segments as needed.

```cucumber
Given path 'documents', documentId, 'download'

# or you can do the same on multiple lines if you wish
Given path 'documents'
And path documentId
And path 'download'
```

Note that the `path` 'resets' after any HTTP request is made but not the `url`. The [Hello World](#hello-world) is a great example of 'REST-ful' use of the `url` when the test focuses on a single REST 'resource'. Look at how the `path` did not need to be specified for the second HTTP `get` call since `/cats` is part of the `url`.

> Important: If you attempt to build a URL in the form `?myparam=value` by using `path` the `?` will get encoded into `%3F`. Use either the [`param`](#param) keyword, e.g.: `* param myparam = 'value'` or [`url`](#url): `* url 'http://example.com/v1?myparam'`

## `request`
In-line JSON:
```cucumber
Given request { name: 'Billie', type: 'LOL' }
```
In-line XML:
```cucumber
And request <cat><name>Billie</name><type>Ceiling</type></cat>
```
From a [file](#reading-files) in the same package.  Use the `classpath:` prefix to load from the [classpath](#classpath) instead.
```cucumber
Given request read('my-json.json')
```
You could always use a variable:
```cucumber
And request myVariable
```
In most cases you won't need to set the `Content-Type` [`header`](#header) as Karate will automatically do the right thing depending on the data-type of the `request`.

Defining the `request` is mandatory if you are using an HTTP `method` that expects a body such as `post`. If you really need to have an empty body, you can use an empty string as shown below, and you can force the right `Content-Type` header by using the [`header`](#header) keyword.

```cucumber
Given request ''
And header Content-Type = 'text/html'
```

Sending a [file](#reading-files) as the entire binary request body is easy (note that [`multipart`](#multipart-file) is different):

```cucumber
Given path 'upload'
And request read('my-image.jpg')
When method put
Then status 200
```

## `method`
The HTTP verb - `get`, `post`, `put`, `delete`, `patch`, `options`, `head`, `connect`, `trace`.

Lower-case is fine.
```cucumber
When method post
```

It is worth internalizing that during test-execution, it is upon the `method` keyword that the actual HTTP request is issued. Which suggests that the step should be in the `When` form, for example: `When method post`. And steps that follow should logically be in the `Then` form. Also make sure that you complete the set up of things like [`url`](#url), [`param`](#param), [`header`](#header), [`configure`](#configure) etc. *before* you fire the `method`.

```cucumber
# set headers or params (if any) BEFORE the method step
Given header Accept = 'application/json'
When method get
# the step that immediately follows the above would typically be:
Then status 200
```

Although rarely needed, variable references or [expressions](#karate-expressions) are also supported:

```cucumber
* def putOrPost = (someVariable == 'dev' ? 'put' : 'post')
* method putOrPost
```

## `status`
This is a shortcut to assert the HTTP response code.
```cucumber
Then status 200
```
And this assertion will cause the test to fail if the HTTP response code is something else.

See also [`responseStatus`](#responsestatus) if you want to do some complex assertions against the HTTP status code.

# Keywords that set key-value pairs
They are `param`, `header`, `cookie`, `form field` and `multipart field`.

The syntax will include a '=' sign between the key and the value.  The key should not be within quotes.

> To make dynamic data-driven testing easier, the following keywords also exist: [`params`](#params), [`headers`](#headers), [`cookies`](#cookies-json) and [`form fields`](#form-fields). They use JSON to build the relevant parts of the HTTP request.

## `param`
Setting query-string parameters:
```cucumber
Given param someKey = 'hello'
And param anotherKey = someVariable
```

The above would result in a URL like: `http://myhost/mypath?someKey=hello&anotherKey=foo`. Note that the `?` and `&` will be automatically inserted.

Multi-value params are also supported:
```cucumber
* param myParam = ['foo', 'bar']
```

For convenience, a `null` value will be ignored. You can also use JSON to set multiple query-parameters in one-line using [`params`](#params) and this is especially useful for dynamic data-driven testing.

## `header`
You can use [functions](#calling-javascript-functions) or [expressions](#karate-expressions):
```cucumber
Given header Authorization = myAuthFunction()
And header transaction-id = 'test-' + myIdString
```

It is worth repeating that in most cases you won't need to set the `Content-Type` header as Karate will automatically do the right thing depending on the data-type of the [`request`](#request).

Because of how easy it is to set HTTP headers, Karate does not provide any special keywords for things like
the [`Accept`](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Accept) header. You simply do
something like this:

```cucumber
Given path 'some/path'
And request { some: 'data' }
And header Accept = 'application/json'
When method post
Then status 200
```

A common need is to send the same header(s) for _every_ request, and [`configure headers`](#configure-headers) (with JSON) is how you can set this up once for all subsequent requests. And if you do this within a `Background:` section, it would apply to all `Scenario:` sections within the `*.feature` file.

```cucumber
* configure headers = { 'Content-Type': 'application/xml' }
```

Note that `Content-Type` had to be enclosed in quotes in the JSON above because the "`-`" (hyphen character) would cause problems otherwise. Also note that "`; charset=UTF-8`" would be appended to the `Content-Type` header that Karate sends by default, and in some rare cases, you may need to suppress this behavior completely. You can do so by setting the `charset` to null via the [`configure`](#configure) keyword:

```cucumber
* configure charset = null
```

If you need headers to be dynamically generated for each HTTP request, use a JavaScript function with [`configure headers`](#configure-headers) instead of JSON.

Multi-value headers (though rarely used in the wild) are also supported:
```cucumber
* header myHeader = ['foo', 'bar']
```

Also look at the [`headers`](#headers) keyword which uses JSON and makes some kinds of dynamic data-driven testing easier.

## `cookie`
Setting a cookie:
```cucumber
Given cookie foo = 'bar'
```

You also have the option of setting multiple cookies in one-step using the [`cookies`](#cookies) keyword.

Note that any cookies returned in the HTTP response would be automatically set for any future requests. This mechanism works by calling [`configure cookies`](#configure) behind the scenes and if you need to stop auto-adding cookies for future requests, just do this:

```cucumber
* configure cookies = null
```

Also refer to the built-in variable [`responseCookies`](#responsecookies) for how you can access and perform assertions on cookie data values.

## `form field`
HTML form fields would be URL-encoded when the HTTP request is submitted (by the [`method`](#method) step). You would typically use these to simulate a user sign-in and then grab a security token from the [`response`](#response).

Note that the `Content-Type` header will be automatically set to: `application/x-www-form-urlencoded`. You just need to do a normal `POST` (or `GET`).

For example:

```cucumber
Given path 'login'
And form field username = 'john'
And form field password = 'secret'
When method post
Then status 200
And def authToken = response.token
```

A good example of the use of `form field` for a typical sign-in flow is this OAuth 2 demo: [`oauth2.feature`](karate-demo/src/test/java/demo/oauth/oauth2.feature).

Multi-values are supported the way you would expect (e.g. for simulating check-boxes and multi-selects):
```cucumber
* form field selected = ['apple', 'orange']
```

You can also dynamically set multiple fields in one step using the [`form fields`](#form-fields) keyword.

## `multipart field`
Use this for building multipart named (form) field requests. This is typically combined with `multipart file` as shown below.

> Multiple fields can be set in one step using [`multipart fields`](#multipart-fields).

## `multipart file`
```cucumber
Given multipart file myFile = { read: 'test.pdf', filename: 'upload-name.pdf', contentType: 'application/pdf' }
And multipart field message = 'hello world'
When method post
Then status 200
```

It is important to note that `myFile` above is the "field name" within the `multipart/form-data` request payload. This roughly corresponds to a [`cURL`](https://curl.haxx.se/docs/manpage.html#-F) argument of `-F @myFile=test.pdf`.

> `multipart` file uploads can be tricky, and hard to get right. If you get stuck and ask a question on [Stack Overflow](https://stackoverflow.com/questions/tagged/karate), make sure you provide a `cURL` command that works - or else it would be very difficult for anyone to troubleshoot what you could be doing wrong. Also see [this thread](https://github.com/intuit/karate/issues/1645#issuecomment-862502881).

Also note that `multipart file` takes a JSON argument so that you can easily set the `filename` and the `contentType` (mime-type) in one step.

* `read`: the name of a file, and the [`classpath:`](#reading-files) prefix also is allowed. mandatory unless `value` is used, see below.
* `value`: alternative to `read` in rare cases where something like a JSON or XML file is being uploaded and you want to create it dynamically.
* `filename`: optional, if not specified there will be no `filename` attribute in `Content-Disposition`
* `contentType`: optional, will default to `application/octet-stream`

When 'multipart' content is involved, the `Content-Type` header of the HTTP request defaults to `multipart/form-data`.
You can over-ride it by using the [`header`](#header) keyword before the `method` step.  Look at
[`multipart entity`](#multipart-entity) for an example.

Also refer to this [demo example](karate-demo) for a working example of multipart file uploads: [`upload.feature`](karate-demo/src/test/java/demo/upload/upload.feature).

You can also dynamically set multiple files in one step using [`multipart files`](#multipart-files).

## `multipart entity`
> This is technically not in the key-value form: `multipart field name = 'foo'`, but logically
belongs here in the documentation.

Use this for multipart content items that don't have field-names.  Here below is an example that
also demonstrates using the [`multipart/related`](https://tools.ietf.org/html/rfc2387) content-type.

```cucumber
Given path 'v2', 'documents'
And multipart entity read('foo.json')
And multipart field image = read('bar.jpg')
And header Content-Type = 'multipart/related'
When method post 
Then status 201
```

# Multi-Param Keywords
## Keywords that set multiple key-value pairs in one step
`params`, `headers`, `cookies`, `form fields`, `multipart fields` and `multipart files` take a single JSON argument (which can be in-line or a variable reference), and this enables certain types of dynamic data-driven testing, especially because any JSON key with a `null` value will be ignored. Here is a good example in the demos: [`dynamic-params.feature`](karate-demo/src/test/java/demo/search/dynamic-params.feature)

## `params`
```cucumber
* params { searchBy: 'client', active: true, someList: [1, 2, 3] }
```

See also [`param`](#param).

## `headers`
```cucumber
* def someData = { Authorization: 'sometoken', tx_id: '1234', extraTokens: ['abc', 'def'] }
* headers someData
```

See also [`header`](#header).

## `cookies`
```cucumber
* cookies { someKey: 'someValue', foo: 'bar' }
```

See also [`cookie`](#cookie).

## `form fields`
```cucumber
* def credentials = { username: '#(user.name)', password: 'secret', projects: ['one', 'two'] }
* form fields credentials
```

See also [`form field`](#form-field).

## `multipart fields`
```cucumber
And multipart fields { message: 'hello world', json: { foo: 'bar' } }
```

See also [`multipart field`](#multipart-field).

## `multipart files`
The single JSON argument needs to be in the form `{ field1: { read: 'file1.ext' }, field2: { read: 'file2.ext' } }` where each nested JSON is in the form expected by [`multipart file`](#multipart-file)

```cucumber
* def json = {}
* set json.myFile1 = { read: 'test1.pdf', filename: 'upload-name1.pdf', contentType: 'application/pdf' }
# if you have dynamic keys you can do this
* def key = 'myFile2'
* json[key] = { read: 'test2.pdf', filename: 'upload-name2.pdf', contentType: 'application/pdf' }
And multipart files json
```

# SOAP
Since a SOAP request needs special handling, this is the only case where the
[`method`](#method) step is not used to actually fire the request to the server.

## `soap action`
The name of the SOAP action specified is used as the 'SOAPAction' header.  Here is an example
which also demonstrates how you could assert for expected values in the response XML.
```cucumber
Given request read('soap-request.xml')
When soap action 'QueryUsageBalance'
Then status 200
And match response /Envelope/Body/QueryUsageBalanceResponse/Result/Error/Code == 'DAT_USAGE_1003'
And match response /Envelope/Body/QueryUsageBalanceResponse == read('expected-response.xml')
```

A [working example](karate-junit4/src/test/java/com/intuit/karate/junit4/demos/soap.feature) of calling a SOAP service can be found within the Karate project test-suite. Refer to the [demos](karate-demo) for another example: [`soap.feature`](karate-demo/src/test/java/demo/soap/soap.feature).

More examples are available that showcase various ways of parameter-izing and dynamically manipulating SOAP requests in a data-driven fashion. Karate is quite flexible, and provides multiple options for you to evolve patterns that fit your environment, as you can see here: [`xml.feature`](karate-junit4/src/test/java/com/intuit/karate/junit4/xml/xml.feature).

## `retry until`
Karate has built-in support for re-trying an HTTP request until a certain condition has been met. The default setting for the max retry-attempts is 3 with a poll interval of 3000 milliseconds (3 seconds). If needed, this can be changed by using [`configure`](#configure) - any time during a test, or set globally via [`karate-config.js`](#configuration)

```cucumber
* configure retry = { count: 10, interval: 5000 }
```

The `retry` keyword is designed to extend the existing [`method`](#method) syntax (and should appear **before** a `method` step) like so:

```cucumber
Given url demoBaseUrl
And path 'greeting'
And retry until response.id > 3
When method get
Then status 200
```

Any JavaScript expression that uses any variable in scope can be placed after the "`retry until`" part. So you can refer to the [`response`](#response), [`responseStatus`](#responsestatus) or even [`responseHeaders`](#responseheaders) if needed. For example:

```cucumber
Given url demoBaseUrl
And path 'greeting'
And retry until responseStatus == 200 && response.id > 3
When method get
```

> Note that it has to be a pure JavaScript expression - which means that `match` syntax such as `contains` will *not* work. But you can easily achieve any complex logic by [using the JS API](https://stackoverflow.com/a/55823180/143475).

Refer to [`polling.feature`](karate-demo/src/test/java/demo/polling/polling.feature) for an example, and also see the alternative way to achieve [polling](#polling).

# `configure`
## Managing Headers, SSL, Timeouts and HTTP Proxy
You can adjust configuration settings for the HTTP client used by Karate using this keyword. The syntax is similar to [`def`](#def) but instead of a named variable, you update configuration. Here are the configuration keys supported:

| Key                        | Type               | Description                                                                                                                                                                                                                                                                                                 |
|----------------------------|--------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `headers`                  | JSON / JS function | See [`configure headers`](#configure-headers)                                                                                                                                                                                                                                                               |
| `cookies`                  | JSON / JS function | Just like `configure headers`, but for cookies. You will typically never use this, as response cookies are auto-added to all future requests. If you need to clear cookies at any time, just do `configure cookies = null`                                                                                  |
| `logPrettyRequest`         | boolean            | Pretty print the request payload JSON or XML with indenting (default `false`)                                                                                                                                                                                                                               |
| `logPrettyResponse`        | boolean            | Pretty print the response payload JSON or XML with indenting (default `false`)                                                                                                                                                                                                                              |
| `printEnabled`             | boolean            | Can be used to suppress the [`print`](#print) output when not in 'dev mode' by setting as `false` (default `true`)                                                                                                                                                                                          |
| `report`                   | JSON / boolean     | see [report verbosity](#report-verbosity)                                                                                                                                                                                                                                                                   |
| `afterScenario`            | JS function        | Will be called [after every `Scenario`](#hooks) (or `Example` within a `Scenario Outline`), refer to this example: [`hooks.feature`](karate-demo/src/test/java/demo/hooks/hooks.feature)                                                                                                                    |
| `afterFeature`             | JS function        | Will be called [after every `Feature`](#hooks), refer to this example: [`hooks.feature`](karate-demo/src/test/java/demo/hooks/hooks.feature)                                                                                                                                                                |
| `ssl`                      | boolean            | Enable HTTPS calls without needing to configure a trusted certificate or key-store.                                                                                                                                                                                                                         |
| `ssl`                      | string             | Like above, but force the SSL algorithm to one of [these values](http://docs.oracle.com/javase/8/docs/technotes/guides/security/StandardNames.html#SSLContext). (The above form internally defaults to `TLS` if simply set to `true`).                                                                      |
| `ssl`                      | JSON               | see [X509 certificate authentication](#x509-certificate-authentication)                                                                                                                                                                                                                                     |
| `followRedirects`          | boolean            | Whether the HTTP client automatically follows redirects - (default `true`), refer to this [example](karate-demo/src/test/java/demo/redirect/redirect.feature).                                                                                                                                              |
| `connectTimeout`           | integer            | Set the connect timeout (milliseconds). The default is 30000 (30 seconds). Note that for `karate-apache`, this sets the [socket timeout](https://stackoverflow.com/a/22722260/143475) to the same value as well.                                                                                            |
| `readTimeout`              | integer            | Set the read timeout (milliseconds). The default is 30000 (30 seconds).                                                                                                                                                                                                                                     |
| `proxy`                    | string             | Set the URI of the HTTP proxy to use.                                                                                                                                                                                                                                                                       |
| `proxy`                    | JSON               | For a proxy that requires authentication, set the `uri`, `username` and `password`, see example below. Also a `nonProxyHosts` key is supported which can take a list for e.g. `{ uri: 'http://my.proxy.host:8080',  nonProxyHosts: ['host1', 'host2']}`                                                     |
| `localAddress`             | string             | see [`karate-gatling`](karate-gatling#configure-localaddress)                                                                                                                                                                                                                                               |
| `charset`                  | string             | The charset that will be sent in the request `Content-Type` which defaults to `utf-8`. You typically never need to change this, and you can over-ride (or disable) this per-request if needed via the [`header`](#header) keyword ([example](karate-demo/src/test/java/demo/headers/content-type.feature)). |
| `retry`                    | JSON               | defaults to `{ count: 3, interval: 3000 }` - see [`retry until`](#retry-until)                                                                                                                                                                                                                              |
| `callSingleCache`          | JSON               | defaults to `{ minutes: 0, dir: 'target' }` - see [`configure callSingleCache`](#configure-callsinglecache)                                                                                                                                                                                                 |
| `lowerCaseResponseHeaders` | boolean            | Converts every key in the [`responseHeaders`](#responseheaders) to lower-case which makes it easier to validate or re-use                                                                                                                                                                                   |
| `abortedStepsShouldPass`   | boolean            | defaults to `false`, whether steps after a [`karate.abort()`](#karate-abort) should be marked as `PASSED` instead of `SKIPPED` - this can impact the behavior of 3rd-party reports, see [this issue](https://github.com/intuit/karate/issues/755) for details                                               |
| `logModifier`              | Java Object        | See [Log Masking](#log-masking)                                                                                                                                                                                                                                                                             |
| `responseHeaders`          | JSON / JS function | See [`karate-netty`](karate-netty#configure-responseheaders)                                                                                                                                                                                                                                                |
| `cors`                     | boolean            | See [`karate-netty`](karate-netty#configure-cors)                                                                                                                                                                                                                                                           |
| `driver`                   | JSON               | See [UI Automation](karate-core)                                                                                                                                                                                                                                                                            |
| `driverTarget`             | JSON / Java Object | See [`configure driverTarget`](karate-core#configure-drivertarget)                                                                                                                                                                                                                                          |
| `pauseIfNotPerf`           | boolean            | defaults to `false`, relevant only for performance-testing, see [`karate.pause()`](#karate-pause) and [`karate-gatling`](karate-gatling#think-time)                                                                                                                                                         |

Examples:
```cucumber
# pretty print the response payload
* configure logPrettyResponse = true

# enable ssl (and no certificate is required)
* configure ssl = true

# enable ssl and force the algorithm to TLSv1.2
* configure ssl = 'TLSv1.2'

# time-out if the response is not received within 10 seconds (after the connection is established)
* configure readTimeout = 10000

# set the uri of the http proxy server to use
* configure proxy = 'http://my.proxy.host:8080'

# proxy which needs authentication
* configure proxy = { uri: 'http://my.proxy.host:8080', username: 'john', password: 'secret' }
```

## `configure` globally
If you need to set any of these "globally" you can easily do so using [the `karate` object](#the-karate-object) in [`karate-config.js`](#configuration) - for e.g:

```js
  karate.configure('ssl', true);
  karate.configure('readTimeout', 5000);
```

In rare cases where you need to add nested non-JSON data to the `configure` value, you have to play by the [rules](#restrictions-on-global-variables) that apply within [`karate-config.js`](#karate-configjs). Here is an example of performing a [`configure driver`](karate-core#configure-driver) step in JavaScript:

```js
  var LM = Java.type('com.mycompany.MyHttpLogModifier');
  var driverConfig = { type:'chromedriver', start: false, webDriverUrl:'https://user:password@zalenium.net/wd/hub' };
  driverConfig.httpConfig = karate.toMap({ logModifier: LM.INSTANCE });
  karate.configure('driver', driverConfig);
```

### Report Verbosity
By default, Karate will add logs to the report output so that HTTP requests and responses appear in-line in the HTML reports. There may be cases where you want to suppress this to make the reports "lighter" and easier to read.

The configure key here is `report` and it takes a JSON value. For example:

```cucumber
* configure report = { showLog: true, showAllSteps: false }
```

| `report`       | Type    | Description                                                                                                                                                                         |
|----------------|---------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `showLog`      | boolean | HTTP requests and responses (including headers) will appear in the HTML report, default `true`                                                                                      |
| `showAllSteps` | boolean | If `false`, any step that starts with `*` instead of `Given`, `When`, `Then` etc. will *not* appear in the HTML report. The [`print`](#print) step is an exception. Default `true`. |

You can 'reset' default settings by using the following short-cut:

```cucumber
# reset to defaults
* configure report = true
```

Since you can use `configure` any time within a test, you have control over which requests or steps you want to show / hide. This can be convenient if a particular call results in a huge response payload.

The following short-cut is also supported which will disable all logs:

```cucumber
* configure report = false
```
#### `@report=false`
When you use a re-usable feature that has [commonly used utilities](multiple-functions-in-one-file), you may want to hide this completely from the HTML reports. The special [tag](#tags) `@report=false` can be used, and it can even be used only for a single `Scenario`:

```cucumber
@ignore @report=false
Feature:

Scenario:
# some re-usable steps
```