/* Program to find follow of non terminals */

#include<stdio.h>
#include<conio.h>
#define max 10
#define MAX 5

void ffun(int, int);
void fun(int, int[]);
void follow(int i);
char array[max][Max], temp[max][MAX];
int c,n,t;
int fun2(int i, int j, int p[], int key){
    int k;
    if(!key){
        for(k=0;k<n;k++){
            if(array[i][j] == array[k][0]){
                break;
            }
            p[0]=i;p[1]=j+1;
            fun(k,p);
            return 0;
        }
    }else{
        for(k=0;k<=c;k++){
            if(array[i][j] == temp[t][k])
            break;
        }
        if(k>c) return 1;
        else return 0;
    }
}

void fun(int i; int p[]){
    int j,k,key;
    for(j=2;array[i][j] !=NULL; j++){
        if(array[i][j-1] == '/' || array[i][j-1]=='='){
            if(array[i][j]>='A'&&array[i][j]<='Z'){
                key=0;
                fun2(i,j,p.key);
            }else{
                key = 1;
                if(fun2(i,j,p,key)){
                    temp[t][++c]=array[i][j];
                    if(array[i][j] =='@'&&p[0]!=-1)
                    {
                        if(array[p[0]][p[1]]>='A'&&array[p[0]][p[1]]<='Z'){
                            key=0;
                            fun2(p[0],p[1],p,key);
                        }else{
                            if(array[p[0]][p[1]]!='/'&&array[p[0]][p[1]]!=NULL){
                                if(fun2(p[0],p[1],p,key)){
                                    temp[t][++c]=array[p[0]][p[1]];
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

char fol[max][MAX], ff[max];
int f,l,ff0;
void follow(int i){
    int j,k;
    for(j=0;j<=ff0;j++){
        if(array[i],[0]==ff[j]){
            return;
        }
        if(j>ff0) ff[++ff0]=array[i][0];
        if(i==0) fol[l][++f]='$';
        for(j=0;j<n;j++){
            for(k=2;array[j][k]!=NULL; k++){
                if(array[j][k]==array[i][0])
                    funn(j,k);
            }

            void ffun(int j, int k){
                int ii, null=0;tt,cc;
                if(array[j][k+1]=='/'||array[j][k+1]==NULL){
                    null = 1;
                }
                for(ii)
            }
        }
    }
}