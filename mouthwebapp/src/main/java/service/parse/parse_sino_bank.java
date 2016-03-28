package service.parse;

import java.io.IOException;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;

import dataentity.goldEntity;

//Parse json data sample
public class parse_sino_bank {

	final static String sino_bank = "https://mma.sinopac.com/ws/share/rate/ws_goldlist.ashx?Cross=genQueryGoldListResult&1459180892543&callback=genQueryGoldListResult&_=1459180892251";
	goldEntity price = null;
	JSONParser parser = new JSONParser();
	JSONObject jsonObject;

	public goldEntity getprice() {

		Document doc;
		try {
			doc = Jsoup.connect(sino_bank).userAgent("Mozilla/5.0").validateTLSCertificates(false).get();
			// json data parse
			Object obj = parser.parse(doc.body().text().replace("genQueryGoldListResult([", "").replace("]);", ""));
			jsonObject = (JSONObject) obj;
			obj = parser.parse(jsonObject.get("SubInfo1").toString().replace("[", "").replace("]", ""));
			jsonObject = (JSONObject) obj;
			// Add to entitys
			price = new goldEntity();
			price.setBank("¥ÃÂ×»È¦æ");
			price.setTw_banksell(jsonObject.get("DataValue3").toString());
			price.setTw_bankbuy(jsonObject.get("DataValue2").toString());
		} catch (IOException e) {
			e.printStackTrace();
		} catch (ParseException e) {
			e.printStackTrace();
		}

		return price;
	}
}
