import java.util.NoSuchElementException;

class Greatest{

	public static float max(float[] values) throws NoSuchElementException {
	    if (values.length == 0)
		throw new NoSuchElementException();
	    float themax = values[0];
	    for (int idx = 1; idx < values.length; ++idx) {
		if (values[idx] > themax)
		    themax = values[idx];
	    }
	    return themax;
	}

	public static void main(String[] args){
		float values[] = {1,2,3,1,4,2,1};
		System.out.println(max(values));
	}

}
