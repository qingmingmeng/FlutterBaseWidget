
class AddressBean {

	AddressBean();

  String addr;
  String mobile;

	AddressBean.fromJsonMap(Map<String, dynamic> map): 
		addr = map["addr"],
		mobile = map["mobile"];

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['addr'] = addr;
		data['mobile'] = mobile;
		return data;
	}
}
