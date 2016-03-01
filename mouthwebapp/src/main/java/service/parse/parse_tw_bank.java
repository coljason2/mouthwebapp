package service.parse;

import java.io.IOException;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;

import dataentity.goldEntity;

public class parse_tw_bank {

	final static String tw_bank = "http://rate.bot.com.tw/Pages/Static/UIP005.zh-TW.htm";
	goldEntity price = null;

	public goldEntity getprice() {

		Document doc;
		try {
			doc = Jsoup.connect(tw_bank).get();
			Element table = doc.getElementById("GoldBankBookForTWD");
			price = new goldEntity();
			price.setBank("•x∆Wª»¶Ê");
			price.setTw_banksell(table.getElementsByClass("decimal").get(6).text());
			price.setTw_bankbuy(table.getElementsByClass("decimal").get(13).text());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return price;
	}
}
