# LMProtecter
利用runtime转发消息，防止因为unrecognized selector sent to instance导致的崩溃

通过OC的消息发送机制，利用forwardingTargetForSelector方法对为实现的方法进行处理，转发给一个protecter对象，在protecter对象中对resolveInstanceMethodForSelector添加一个默认的实现，从而防止unrecognized selector sent to instance的崩溃错误。。

具体的解析可以看[这里](www.lemon2well.top);


