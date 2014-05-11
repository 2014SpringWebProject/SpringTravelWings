package dreamwings.vo;

public class Member {
	private String member_id;
	private String member_passwd;
	private String member_name;
	private String member_mail;

	public Member() {
	}

	public Member(String member_id, String member_passwd, String member_name,
			String member_mail) {
		super();
		this.member_id = member_id;
		this.member_passwd = member_passwd;
		this.member_name = member_name;
		this.member_mail = member_mail;
	}

	public Member(String member_id, String member_passwd) {
		super();
		this.member_id = member_id;
		this.member_passwd = member_passwd;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getMember_passwd() {
		return member_passwd;
	}

	public void setMember_passwd(String member_passwd) {
		this.member_passwd = member_passwd;
	}

	public String getMember_name() {
		return member_name;
	}

	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}

	public String getMember_mail() {
		return member_mail;
	}

	public void setMember_mail(String member_mail) {
		this.member_mail = member_mail;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Member [member_id=");
		builder.append(member_id);
		builder.append(", member_passwd=");
		builder.append(member_passwd);
		builder.append(", member_name=");
		builder.append(member_name);
		builder.append(", member_mail=");
		builder.append(member_mail);
		builder.append("]");
		return builder.toString();
	}
}
