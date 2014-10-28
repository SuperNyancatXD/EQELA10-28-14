public class MySecondHandler : SympathyContentHandler
	{	

		String temp;
		class MyContentNode : SympathyContentNode
		{
			
			public void get_content(HashTable options, SympathyContentNodeCallback cb) {
				var question = Array.create();
				question.add("1*1");
				question.add("(799*77)%1");
				question.add("8^8/8^7");
				question.add("4+4");
				question.add("5+5");
				question.add("6+6");
				question.add("7+7");
				question.add("8+8");
				question.add("100^(1/2)+(79%5)");
				question.add("8-20/4+50-4*5");
				question.add("6^3/8*2");
				question.add("57+3/3");
				var answer = Array.create();
				answer.add("1");
				answer.add("0");
				answer.add("8");
				answer.add("8");
				answer.add("10");
				answer.add("12");
				answer.add("14");
				answer.add("16");
				answer.add("14");
				answer.add("33");
				answer.add("18");
				answer.add("58");
				var v = HashTable.create();
				v.set("title", "Q/A");
				v.set("questions", question);
				v.set("answers", answer);
				int x = Math.random(0,11);
				var o = HashTable.create();
				o.set("Q",question.get(x));
				o.set("A",answer.get(x));
				cb.on_content(o,"indexdocument",0);
		}
			
	}
	
	public SympathyContentNode get_content_node() {
			return (new MyContentNode());
	}
	
	public void post(HTTPRequest req) {
			HashTable postparams = req.get_post_parameters();
			temp=postparams.get_string("text1");
			if(temp.equals(postparams.get_string("answ"))) {
				req.send_response(HTTPResponse.for_html_string("<p>Correct</p>"));
			}
			else {
				req.send_response(HTTPResponse.for_html_string("<p>Wrong</p>"));
			}
	}
}