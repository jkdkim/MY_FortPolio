package webhandler.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.stereotype.Component;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

/*
 * 	ws://xxx.xxx.xxx.xxx/ws/upload.it 으로 websooket 으로 연결된 정보들을 다가지고 있는애 
 * 	애가 가지고있느느 list 를 통해서 메세지를 전달하면 여기에 연결된 애들은전부 메세지를 받을거임.
 * 	필요할때 메세지를 전송을 시키게 하려면.. 조금 수정을 해야된다.
 */
@Component
public class UploaderHandler extends TextWebSocketHandler {

	List<WebSocketSession> sList;
	
	@PostConstruct
	public void init() {
		sList = new ArrayList<>();
	
	}

	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		System.out.println(session+"pupu연결");
		 Object userId = session.getAttributes().get("userId");
		
		sList.add(session);
		System.out.println(sList);
	}
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		System.out.println(session+"pupu연결해제");
		sList.remove(session);

	}
	public void sendToAllSession(String msg) {
		for (int i = 0; i < sList.size(); i++) {
			System.out.println(msg);
			WebSocketSession wss = sList.get(i);
			try {
				wss.sendMessage(new TextMessage(msg));
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
}
