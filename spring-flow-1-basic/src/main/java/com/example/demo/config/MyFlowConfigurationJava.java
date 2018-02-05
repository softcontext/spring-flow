package com.example.demo.config;

import java.util.Collections;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Profile;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.webflow.config.AbstractFlowConfiguration;
import org.springframework.webflow.definition.registry.FlowDefinitionRegistry;
import org.springframework.webflow.engine.builder.support.FlowBuilderServices;
import org.springframework.webflow.executor.FlowExecutor;
import org.springframework.webflow.mvc.builder.MvcViewFactoryCreator;
import org.springframework.webflow.mvc.servlet.FlowHandlerAdapter;
import org.springframework.webflow.mvc.servlet.FlowHandlerMapping;

@Profile(value= {"javaconfig", "default"})
@Configuration
public class MyFlowConfigurationJava extends AbstractFlowConfiguration {

	@Autowired
	private ViewResolver viewResolver;
	
//	<bean id="mvcViewFactoryCreator" class="org.springframework.webflow.mvc.builder.MvcViewFactoryCreator">
//		<property name="viewResolvers">
//			<list>
//				<ref bean="viewResolver" />
//			</list>
//		</property>
//		<property name="useSpringBeanBinding" value="true" />
//	</bean>
	@Bean
    public MvcViewFactoryCreator mvcViewFactoryCreator() {
        MvcViewFactoryCreator factoryCreator = new MvcViewFactoryCreator();
        factoryCreator.setViewResolvers(Collections.singletonList(viewResolver));
        factoryCreator.setUseSpringBeanBinding(true);
        return factoryCreator;
    }
	
//	<flow:flow-builder-services id="flowBuilderServices" view-factory-creator="mvcViewFactoryCreator" 
//		development="true" />
	@Bean
    public FlowBuilderServices flowBuilderServices() {
        return getFlowBuilderServicesBuilder().setViewFactoryCreator(mvcViewFactoryCreator())
        		.setDevelopmentMode(true).build();
    }
	
//	<!-- #1 : 웹플로우 등록기 -->
//	<flow:flow-registry id="loginFlowRegistry" flow-builder-services="flowBuilderServices">
//		<flow:flow-location id="loginFlowAccessPath" path="/WEB-INF/flows/login-flow.xml" />
//	</flow:flow-registry>
	@Bean
    public FlowDefinitionRegistry loginFlowRegistry() {
        return getFlowDefinitionRegistryBuilder(flowBuilderServices())
        		.addFlowLocation("/WEB-INF/flows/login-flow.xml", "loginFlowAccessPath").build();
    }

//	<!-- #2 : 웹플로우 실행기 -->
//	<flow:flow-executor id="loginFlowExecutor" flow-registry="loginFlowRegistry" />
	@Bean
    public FlowExecutor loginFlowExecutor() {
        return getFlowExecutorBuilder(loginFlowRegistry()).build();
    }
	
//	<!-- #3 : 웹플로우 핸들러매핑 -->
//	<bean class="org.springframework.webflow.mvc.servlet.FlowHandlerMapping">
//		<property name="order" value="-1" />
//		<property name="flowRegistry" ref="loginFlowRegistry" />
//	</bean>
	@Bean
    public FlowHandlerMapping flowHandlerMapping() {
        FlowHandlerMapping handlerMapping = new FlowHandlerMapping();
        handlerMapping.setOrder(-1);
        handlerMapping.setFlowRegistry(loginFlowRegistry());
        return handlerMapping;
    }
	
//	<!-- #4 : 웹플로우 핸들러 -->
//	<bean class="org.springframework.webflow.mvc.servlet.FlowHandlerAdapter">
//		<property name="flowExecutor" ref="loginFlowExecutor" />
//		<property name="saveOutputToFlashScopeOnRedirect" value="true" />
//	</bean>
    @Bean
    public FlowHandlerAdapter flowHandlerAdapter() {
        FlowHandlerAdapter handlerAdapter = new FlowHandlerAdapter();
        handlerAdapter.setFlowExecutor(loginFlowExecutor());
        handlerAdapter.setSaveOutputToFlashScopeOnRedirect(true);
        return handlerAdapter;
    }
    
}
