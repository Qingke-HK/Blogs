# 第二章 微服务构建：Spring Boot
## Spring Boot配置文件
### 多环境配置
具体哪个环境会被加载，需要设置`spring.profiles.active`属性
#### properties文件中多环境配置
在Spring Boot中，多环境配置的文件名需要满足application-{profile}.properties的格式，例如：
	* 测试环境：application-test.properties
	* 开发环境：application-dev.properties
	* 生产环境：application-prod.properties
#### YAML文件中多环境配置
Spring Boot除了传统的properties文件之外，还可以采取YAML文件，采用YAML文件可以在单个文件中通过使用`spring.profiles`属性定义多个不同的环境配置，如下所示：
```yaml
server:
	port: 8881
---
spring:
	profiles: test
server:
	port: 8882
---
spring:
	profiles: prod
server:
	port: 8883
```
### 配置文件中使用随机参数
```properties
random.string=${random.value}
random.int=${random.int}
random.int=${random.int}
# 10 以内的随机数
random.int=${random.int(10)}
# 10～20的随机数
random.int=${random.int(10,20)}
# 随机 long
random.long=${random.long}
```
## 使用`@Value`注解加载属性值
`@Value`注解加载属性值时支持两种表达式：
1. PlaceHolder方式：格式为`${...}`
2. SpEL表达式：格式为`#{...}`

## Spring Boot属性加载顺序
一下的加载优先级按照顺序由高到低，数字越小级别越高
1. 命令行中传入的参数
2. SPRING_APPLICATION_JSON（JSON形式的系统环境变量）中的属性
3. Java:comp/env中的JNDI属性
4. Java的系统属性
5. 操作系统的环境变量
6. 通过random.*配置的随机属性
7. 位于当前jar包之外，针对不同{profile}环境的配置文件的内容
8. 位于当前jar包之内，针对不同{profile}环境的配置文件的内容
9. 位于当前jar包之外的application.properties和YAML配置内容
10. 位于当前jar包之内的application.properties和YAML配置内容
11. 在`@Configuration`注解修饰的类中，通过`@PropertySource`注解定义的属性
12. 应用默认属性，使用`SpringApplication.setDefaultProperties`定义的内容