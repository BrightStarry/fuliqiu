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