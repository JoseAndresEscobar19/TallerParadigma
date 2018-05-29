public aspect GreetingAspectJ{
	
	long startTime,estimatedTime;
	
	pointcut callGreeting(): call (* HelloAspectJDemo.greeting());
    
	before(): callGreeting(){
    	startTime=System.nanoTime();
    }
    after() : callGreeting() {
    	estimatedTime=System.nanoTime()-startTime;
    	System.out.println("Tiempo estimado: " + estimatedTime);
    }
}