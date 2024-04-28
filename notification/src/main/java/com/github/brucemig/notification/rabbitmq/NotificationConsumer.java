package com.github.brucemig.notification.rabbitmq;

import com.github.brucemig.clients.notification.NotificationRequest;
import com.github.brucemig.notification.NotificationService;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.stereotype.Component;

@Component
@AllArgsConstructor
@Slf4j
public class NotificationConsumer {

    private final NotificationService notificationService;

    @RabbitListener(queues = "${rabbitmq.queue.notification}")
    public void consumer(NotificationRequest notificationRequest) {
        log.info("[x] Consumed {} from queue", notificationRequest);
        notificationService.send(notificationRequest);
    }
}
