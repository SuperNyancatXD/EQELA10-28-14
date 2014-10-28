
/*
 * MyCustomHandler.eq
 * This is a sample template for a Sympathy request handler.
 * Edit to suit your needs.
 */

public class MyCustomHandler : SympathyContentHandler
{
	class MyContentNode : SympathyContentNode
	{
		public void get_content(HashTable options, SympathyContentNodeCallback cb) {
			var greets = LinkedList.create();
			greets.add("Good morning");
			greets.add("Good afternoon");
			greets.add("Good evening");
			greets.add("Good night");
			var v = HashTable.create();
			v.set("title", "This list is coming from Eqela code");
			v.set("greetings", greets);
			cb.on_content(v,"indexdocument");
		}
	}
	public SympathyContentNode get_content_node() {
		return (new MyContentNode());
	}
}
