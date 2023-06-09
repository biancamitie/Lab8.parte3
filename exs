#include <stdio.h>

void Troca(int *num1, int *num2){
    int aux;
    aux = *num1;
    *num1 = *num2;
    *num2 = aux;
}

int main(){
    int x, y;

    printf("valor para x: ");
    scanf("%d", &x);
    printf("valor para y: ");
    scanf("%d", &y);

    printf(" x era %d\ny = %d\n", x, y);
    Troca(&x, &y);
    printf("x eh %d\ny = %d", x, y);

    return 0;
}

#include <stdio.h>

void Maior(int *num1, int *num2){
    int aux;
    aux = *num1;
    if (*num1 < *num2)
    {
        *num1 = *num2;
        *num2 = aux;
    }
}

int main(){
    int x, y;

    printf("x: ");
    scanf("%d", &x);
    printf("y: ");
    scanf("%d", &y);

    Maior(&x, &y);
    printf("x = %d\ny = %d ", x, y);

    return 0;
}

#include <stdio.h>

void soma(int *num1, int *num2){
    *num1 = *num1 + *num2;
}

int main(){
    int A, B;

    printf(" A: ");
    scanf("%d", &A);
    printf(" B: ");
    scanf("%d", &B);

    soma(&A, &B);
    printf("A soma dos numeros %d", A);

    return 0;
}

#include <stdio.h>

int OrdenaValor(int *num1, int *num2, int *num3){
    int aux, i;

    if ((*num1 == *num2) && (*num2 == *num3) && (*num1 == *num3))
    {
        return 1;
    }
    else{
        for (i = 0; i < 2; i++)
        {
            if (*num1 > *num2)
            {
                aux = *num1;
                *num1 = *num2;
                *num2 = aux;
            }
            if (*num2 > *num3)
            {
                aux = *num2;
                *num2 = *num3;
                *num3 = aux;
            }   
        }
        return 0;
    }

}

int main(){
    int x, y, z, ret_func;

    printf("x: ");
    scanf("%d", &x);
    printf("y: ");
    scanf("%d", &y);
    printf("z: ");
    scanf("%d", &z);

    ret_func = Ordena(&x, &y, &z);

    if (ret_func == 1)
    {
        printf("Os numeros sao iguais!\n");
    }
    else if (ret_func == 0)
    {
        printf("%d %d %d\n", x, y, z);
    }

    return 0;
}

#include <stdio.h>

void f(float num, int *inteiro, float *f){
    *inteiro = ((int) num);
    *frac = num - (int) num; 
}

int main(){
    float real, parte_real;
    int parte_inteira; 

    printf("Digite um numero real: ");
    scanf("%f", &real);


    f(real, &parte_inteira, &parte_real);

    printf("inteira: %d\nreal: %.2f", parte_inteira, parte_real);

    return 0;
}

#include <stdio.h>
#include <math.h>

#define PI 3.14

void calc_esfera(float R, float *area, float *volume){
    *area = 4 * PI * pow(R,2);
    *volume = 4/3.0 * PI * pow(R,3);
}

int main(){
    float Raio, A, V;

    printf("raio dessa esfera: ");
    scanf("%f", &Raio);

    calc_esfera(Raio, &A, &V);

    printf("Area%.2f\nVolume%.2f", A, V);

    return 0;

}

#include <stdio.h>

void Elemento(int *v, int tam, int *ma, int *n){
    int i;
    *ma = v[0];

    for (i = 1; i < tam; i++)
    {
        if (*(v+i) > *ma)
        {
            *ma = *(v+i);
        }           
    }

    for (i = 0; i < 10; i++)
    {
        if (*(v+i) == *ma)
        {
            (*n)++;
        }
    }
}

int main (){
    int vet[10], i, maior_valor = 0, n = 0;

    for (i = 0; i < 10; i++)
    {
        printf("vet[%d]: ", i);
        scanf("%d", &vet[i]);
    }
    
    Elemento(vet, 10, &maior_valor, &n);

    printf("MAIOR: %d e se repete %d vezes", maior_valor, n);

    return 0;
}

#include <stdio.h>

int negativos(float *v, int tam, int *n){
    int i;
    for (i = 0; i < tam; i++)
    {
        if (*(v+i) < 0)
        {
            (*n)++;
        }
    }

    return *n;
}

int main(){
    float vet[10];
    int i, vezes = 0, retornofunc;

    for (i = 0; i < 10; i++)
    {
        printf("valor para vet[%d]: ", i);
        scanf("%f", &vet[i]);
    }
    
    retornofunc = negativos(vet, 10, &vezes);
    printf("%d numeros negativo", retornofunc);

    return 0;
}

#include <stdio.h>

int main(){
    int vet [10], *p, i;
    p = vet;

    for (i = 0; i < 10; i++)
    {
        printf("valor[%d]: ", i);
        scanf("%d", (p+i));
        *(p+i) += 1;
    }
    for (i = 0; i < 10; i++)
    {
        printf("%d ", *(p+i));
    }
    
    return 0;
}

#include <stdio.h>

void Soma(int *v1, int *v2, int *v_somado, int tam){
    int i;
    for (i = 0; i < tam; i++)
    {
        *(v_somado+i) = *(v1+i) + *(v2+1); 
    }
    
}

int main(){
    int vet1[10], vet2[10], vetsomado[10], i;

    for (i = 0; i < 10; i++)
    {
        printf("vet1[%d]: ", i);
        scanf("%d", &vet1[i]);
        printf("vet2[%d]: ", i);
        scanf("%d", &vet2[i]);
    }
    
    Soma(vet1, vet2, vetsomado, 10);
    
    printf("soma: \n");
    for (i = 0; i < 10; i++)
    {
        printf("%d ", *(vetsomado+i));
    }
    
    return 0;
}

#include <stdio.h>

void Imprime_Vetor(int *v, int tam, int *ma){
    int i;
    *ma = v[0];

    for (i = 1; i < tam; i++)
    {
        if (*(v+i) > *ma)
        {
            *ma = *(v+i);
        }
    }
}

int main(){
    int vet[25], k, i, maior_elemento, j, count;

    printf("k:");
    scanf("%d", &k);
    for (i = 0; i < 25; i++)
    {
        printf("vetor[%d]: ", i);
        scanf("%d", &vet[i]);
    }
    
    Imprime_Vetor(vet, 25, &maior_elemento);
    printf("Maior eh: %d\n", maior_elemento);
    
    #include <stdio.h>

void Min_Max(int *v, int *min, int *max, int tam){
    int i;
    *min = v[0];
    *max = v[0];

    for (i = 1; i < tam; i++)
    {
        if (*(v+i) > *max)
        {
            *max = *(v+i);
        }
        if (*(v+i) < *min)
        {
            *min = *(v+i);
        }
    }
}

int main(){
    int vet[10], val_min, val_max, i;

    for (i = 0; i < 10; i++)
    {
        printf("vetor eh[%d]: ", i);
        scanf("%d", &vet[i]);
    }
    
    Min_Max(vet, &val_min, &val_max, 10);
    printf("Valor minimo eh %d\nValor maximo eh %d", val_min, val_max);

    return 0;
}

#include <stdio.h>

void Ler(int *N1, int *N2){
    printf("primeira nota: ");
    scanf("%d", N1);
    printf("segunda nota: ");
    scanf("%d", N2);
}

void Media(int *prim_nota, int *seg_nota, float *media_aritmetica, float *media_ponderada){
    *media_aritmetica = (*prim_nota + *seg_nota) / 2;
    *media_ponderada = (*prim_nota + *seg_nota*2) / 3;
}

int main(){
    int Nota1, Nota2;
    float media_A, media_P;

    Ler(&Nota1, &Nota2);
    Media(&Nota1, &Nota2, &media_A, &media_P);
    printf("simples: %.2f\nponderada: %.2f", media_A, media_P);

    return 0;
}

#include <stdio.h>
#include <math.h>

int Func_2grau(float A, float B, float C, float *x1, float *x2){
    float delta;

    delta = pow(B,2) - 4*A*C;

    if (delta >= 0)
    {
        *x1 = (-B + sqrt(delta))/(2.0*A); 
        *x2 = (-B - sqrt(delta))/(2.0*A);
        return 2;
    }
    else if (delta == 0)
    {
        *x1 = (-B)/(2*A);
        return 1;
    }
    else{
        return 0;
    }
}

int main(){
    float x, y, z, raiz1, raiz2;
    int ret_func;

    do
    {
        printf("a; ");
        scanf("%f", &x);
        fflush(stdin);
    } while (x == 0);

    printf("b: ");
    scanf("%f", &y);
    printf("c: ");
    scanf("%f", &z);
    
    ret_func = Func_2grau(x, y, z, &raiz1, &raiz2);

    if (ret_func == 2){
        printf("Raiz real: %.2f\nRaiz real: %.2f", raiz1, raiz2);
    }
    else if (ret_func == 1){
        printf("Raiz real: %.2f", raiz1);
    }
    else{
        printf("Nao existe valor real");
    }
    
    return 0;
}

    printf("Vetor com 'k' elementos por linha:\n");
    for (i = 0; i < 25;)
    {
        count = 0;
        for (j = i; count < k; j++)
        {
            printf("%d ", vet[j]);
            count++;
            i++;
        }
        printf("\n");
    }
    
    return 0;
}
