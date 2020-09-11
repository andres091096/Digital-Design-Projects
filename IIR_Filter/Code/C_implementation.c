#include <stdio.h>
int main(int argc, char const *argv[]) {
  /* code */
  int L = 6; //Orden

  float a[6] = {0.0149631283756079,	0.0299262567512157,	0.0149631283756079,	1,	-1.76286699019109,	0.822719503693524};
  float b[6] = {0.0132963481509137,	0.0265926963018275,	0.0132963481509137,	1,	-1.56649683521692,	0.619682227820576};


  float x[365];
  float y_acum[365];
  for (int i = 0; i < 365; i++) {
    y_acum[i] = 0;
  }


  FILE *ptr;
  ptr = fopen("Input.bin","rb");  // r for read, b for binary
  fread(x,sizeof(x),1,ptr); // read 365 bytes to our buffer

  for(int i = 6; i<365; i++){
    for (int j = 0; j < 6; j++) {
      if (j==0) {
        y_acum[i] += x[i-j]*b[j];
      } else {
        y_acum[i] += x[i-j]*b[j]-y_acum[i-j]*a[j];
      }

    }
    printf("Accum[%i]: %f\n", i,y_acum[i]);
  }



  FILE *write_ptr;
  write_ptr = fopen("Output.bin","wb");  // w for write, b for binary
  fwrite(y_acum,sizeof(float),365, write_ptr);
  fclose(write_ptr);


  fclose(ptr);
  return 0;
}
