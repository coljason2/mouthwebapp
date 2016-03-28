package service.parse;

import java.io.IOException;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;

import dataentity.goldEntity;
// Normal parse html
public class parse_fubon_bank {

	final static String tw_bank = "https://ebank.taipeifubon.com.tw/B2C/cfhqu/cfhqu002/CFHQU002_Home.faces?menuId=CFH04&";
	goldEntity price = null;

	public goldEntity getprice() {

		Document doc;
		try {
			doc = Jsoup.connect(tw_bank).userAgent("Mozilla/5.0").validateTLSCertificates(false).get();
			Element table = doc.getElementById("con_white");
			price = new goldEntity();
			price.setBank("´I¨¹»È¦æ");
			price.setTw_banksell(table.getElementsByClass("rt").get(1).text());
			price.setTw_bankbuy(table.getElementsByClass("rt").get(0).text());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return price;
	}
}
