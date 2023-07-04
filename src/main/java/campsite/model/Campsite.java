package campsite.model;

public class Campsite {
		private int siteid ;
		private String sitepackage ;
		private float siteprice ;
		
		public Campsite() {}
		
		public int getSiteid() {
			return siteid;
		}
		public void setSiteid(int siteid) {
			this.siteid = siteid;
		}
		public String getSitepackage() {
			return sitepackage;
		}
		public void setSitepackage(String sitepackage) {
			this.sitepackage = sitepackage;
		}
		public float getSiteprice() {
			return siteprice;
		}
		public void setSiteprice(float siteprice) {
			this.siteprice = siteprice;
		}
}