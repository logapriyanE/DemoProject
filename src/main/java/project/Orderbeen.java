package project;

public class Orderbeen {
	private String id;
	private String status;
	private String deliver;
	public Orderbeen() {
		super();
	}
	public Orderbeen(String id, String status, String deliver) {
		super();
		this.id = id;
		this.status = status;
		this.deliver = deliver;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getDeliver() {
		return deliver;
	}
	public void setDeliver(String deliver) {
		this.deliver = deliver;
	}
	@Override
	public String toString() {
		return "Orderbeen [id=" + id + ", status=" + status + ", deliver=" + deliver + "]";
	}
	
	

}
