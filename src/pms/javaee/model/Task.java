package pms.javaee.model;



public class Task {
	
	private int taskId;
	private String taskdetails;
	private String startdate;
	private String enddate;
	private String status;
	private int projId;
	private int temId;
	private int devId;
	
	public int getTaskId() {
		return taskId;
	}
	public void setTaskId(int taskId) {
		this.taskId = taskId;
	}
	public String getTaskdetails() {
		return taskdetails;
	}
	public void setTaskdetails(String taskdetails) {
		this.taskdetails = taskdetails;
	}
	public String getStartdate() {
		return startdate;
	}
	public void setStartdate(String startdate) {
		this.startdate = startdate;
	}
	public String getEnddate() {
		return enddate;
	}
	public void setEnddate(String enddate) {
		this.enddate = enddate;
	}
	
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getProjId() {
		return projId;
	}
	public void setProjId(int projId) {
		this.projId = projId;
	}
	
	public int getTemId() {
		return temId;
	}
	public void setTemId(int temId) {
		this.temId = temId;
	}
	public int getDevId() {
		return devId;
	}
	public void setDevId(int devId) {
		this.devId = devId;
	}
	
	
}
