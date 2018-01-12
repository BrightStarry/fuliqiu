
#### Bug
* Thymeleaf模版如果不允许不以/结尾等错误,可如下操作
>
    spring:
        thymeleaf:
            mode: LEGACYHTML5
    <dependency>
    	<groupId>net.sourceforge.nekohtml</groupId>
    	<artifactId>nekohtml</artifactId>
    	<version>1.9.22</version>
    </dependency>
>
#### 奇淫巧技
* 加入如下语句,maven打包时自动跳过测试
>
    <properties>
    		<maven.test.skip>true</maven.test.skip>
    </properties>
>

#### Scala 和 Java 混合编写
1. 导入依赖和插件
>
    	<dependency>
    			<groupId>org.scala-lang</groupId>
    			<artifactId>scala-library</artifactId>
    			<version>2.12.4</version>
    		</dependency>
    		<dependency>
    			<groupId>org.scala-lang</groupId>
    			<artifactId>scala-compiler</artifactId>
    			<version>2.12.4</version>
    		</dependency>
    		<dependency>
    			<groupId>org.scala-lang</groupId>
    			<artifactId>scala-reflect</artifactId>
    			<version>2.12.4</version>
    		</dependency>
    		
    		<plugin>
            	<groupId>net.alchim31.maven</groupId>
            	<artifactId>scala-maven-plugin</artifactId>
            	<version>3.3.1</version>
            </plugin>
>

2. 直接建立Scala类.然后使用即可


#### 前端
Bootstrap
Bootstrap 主题 : https://bootswatch.com/ 此处更换蓝色主题
Jquery
Popper.js 轻量级提示插件