package service;

import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

import org.jsoup.nodes.Document;

import dataentity.goldEntity;
import service.parse.parse_tw_bank;

public class getgoldprice {
	private static Logger log = Logger.getLogger(airparses.class.getName());
	private final String sino_bank = "https://goo.gl/h2ymy4";
	private final String rock_bank = "http://wealth.landbank.com.tw/goldbankbook_goldprice01.aspx";
	private final String fubon = "https://ebank.taipeifubon.com.tw/B2C/common/Index.faces";

	List<goldEntity> datas = new ArrayList<goldEntity>();
	parse_tw_bank tw = new parse_tw_bank();

	public List<goldEntity> getprice() {

		datas.add(tw.getprice());
		return datas;
	}
}
