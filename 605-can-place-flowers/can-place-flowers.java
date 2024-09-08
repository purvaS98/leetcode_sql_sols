class Solution {
    public boolean canPlaceFlowers(int[] flowerbed, int n) {
        int i = 0;
        int len = flowerbed.length;

        if (n==0){
            return true;
        }

        while (i < len) {
            
            if (flowerbed[i] == 0 && (i == 0 || flowerbed[i - 1] == 0) && (i == len - 1 || flowerbed[i + 1] == 0)) {
                flowerbed[i] = 1; 
                n--; 
                i++; 
            }
            
            if (n == 0) {
                return true; 
            }

            i++; 
        }

        return false;
    }
}