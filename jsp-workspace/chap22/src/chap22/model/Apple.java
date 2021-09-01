package chap22.model;

public class Apple {
	
	public int price;
	public int size;
		
	public Apple() {
		// TODO Auto-generated constructor stub
		this.price = (int)(Math.random()*10) + 10;
		this.size = (int)(Math.random()*10) + 10;
	}
	
	public int getPrice() {
		return price;
	}
	public int getSize() {
		return size;
	}
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return String.format("<tr><td>%d</td><td>%d</td></tr>", price, size);
				
	}
}
