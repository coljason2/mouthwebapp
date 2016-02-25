package service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import dataentity.airData;

public class airparses {
	private static Logger log = Logger.getLogger(airparses.class.getName());
	private final static String url = "http://opendata2.epa.gov.tw/AQX.xml";
	List<airData> datas = new ArrayList<airData>();

	public List<airData> getWebData() {
		try {
			Document doc = Jsoup.connect(url).get();
			Elements tests = doc.getElementsByTag("Data");
			for (Element testElement : tests) {
				airData data = new airData();
				data.seCountry(testElement.getElementsByTag("County").text());
				data.setPm25(testElement.getElementsByTag("PM2.5").text());
				data.setDate(testElement.getElementsByTag("PublishTime").text());
				data.setSitename(testElement.getElementsByTag("SiteName")
						.text());
				data.setStatus(testElement.getElementsByTag("Status").text());
				datas.add(data);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}

		return datas;
	}

	// public static void main(String arg[]) throws IOException {
	// Document doc = Jsoup.connect(url).get();
	// Elements tests = doc.getElementsByTag("Data");
	// for (Element testElement : tests) {
	// System.out.println(testElement.getElementsByTag("PM2.5"));
	//
	// }
	// }
}
