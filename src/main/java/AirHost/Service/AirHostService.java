package AirHost.Service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import AirHost.Dto.AirDataDto;

@Service
public class AirHostService {
	public AirDataDto getCurrentData() {
		AirDataDto data = new AirDataDto();
		
		data.setAir(1024.0);
		data.setHumidity(75.0);
		data.setTemp(18.6);
		data.setLight(4.0);
		data.setTime("10:50:55 01-21-2022");
		data.setStatus("Trung biÌ€nh");
		
		return data;
	}
	
	public List<AirDataDto> getListData() {
		List<AirDataDto> datas = new ArrayList<AirDataDto>();
		
		for (int i = 0; i < 10; i++) {
			AirDataDto data = new AirDataDto();
			data.setAir(1024.0);
			data.setHumidity(75.0);
			data.setTemp(18.6);
			data.setLight(4.0);
			data.setTime("10:50:55 01-21-2022");
			data.setStatus("Trung bình");
			datas.add(data);
		}
		
		return datas;
	}
}
