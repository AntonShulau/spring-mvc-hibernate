package by.anton.springmvc.aspect;


import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class MyLoggingAspect {
    @Around("execution(* by.anton.springmvc.dao.*.*(..))")
    public Object aroundAllRepositoryMethodAdvice(ProceedingJoinPoint proceedingJoinPoint) throws Throwable {
        MethodSignature methodSignature = (MethodSignature) proceedingJoinPoint.getSignature();
        String methodNAme = methodSignature.getName();
        System.out.println("Begin method: " + methodNAme);
        Object targetMethodResult = proceedingJoinPoint.proceed();
        System.out.println("Method ends: " + methodNAme);
        return targetMethodResult;
    }


}
