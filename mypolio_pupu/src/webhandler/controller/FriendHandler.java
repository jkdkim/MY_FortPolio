package webhandler.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.stereotype.Component;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

@Component
public class FriendHandler extends TextWebSocketHandler {
	List<WebSocketSession> sList;
	@PostConstruct
	public void init() {
		sList = new ArrayList<>();
	}
	
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		System.out.println(session+"pupu연결");
		 Object userId = session.getAttributes().get("userId");
		 System.out.println(userId);
		sList.add((WebSocketSession) userId);
		System.out.println(sList);
	}
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		System.out.println(session+"pupu연결해제");
		sList.remove(session);
	}
	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		String got = message.getPayload();
		for(int i=0;i<sList.size();i++) {
			WebSocketSession wss = sList.get(i);
			wss.sendMessage(new TextMessage(got));
		}
	}
}
