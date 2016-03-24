package service.parse;

import java.io.IOException;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;

import dataentity.goldEntity;

public class parse_fubon_bank {

	final static String tw_bank = "https://ebank.taipeifubon.com.tw/B2C/common/Index.faces";
	goldEntity price = null;

	public goldEntity getprice() {

		Document doc;
		try {
			doc = Jsoup.connect(tw_bank).get();
			Element table = doc.getElementById("GoldBankBookForTWD");
			price = new goldEntity();
			price.setBank("�x�W�Ȧ�");
			price.setTw_banksell(table.getElementsByClass("decimal").get(6).text());
			price.setTw_bankbuy(table.getElementsByClass("decimal").get(13).text());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return price;
	}
}