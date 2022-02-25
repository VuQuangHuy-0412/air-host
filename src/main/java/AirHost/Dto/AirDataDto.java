package AirHost.Dto;

public class AirDataDto {
	private Double air;
	private Double light;
	private Double temp;
	private Double humidity;
	private String time;
	private String status;
	
	public Double getAir() {
		return air;
	}
	public void setAir(Double air) {
		this.air = air;
	}
	public Double getLight() {
		return light;
	}
	public void setLight(Double light) {
		this.light = light;
	}
	public Double getTemp() {
		return temp;
	}
	public void setTemp(Double temp) {
		this.temp = temp;
	}
	public Double getHumidity() {
		return humidity;
	}
	public void setHumidity(Double humidity) {
		this.humidity = humidity;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
}
