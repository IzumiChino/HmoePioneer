#include<bits/stdc++.h>
using namespace std;
int main(){
    fstream iostr;
    string usr;
    cin>>usr;
    string usrping = "ping " + usr;
    system(usr);
    bool bl;
    cin>>bl;
    if(bl==1){
        iostr.open("default.conf",ios:app);
        iostr<<usr<<'\n';
        iostr.close();
    }
    else
        printf("cannot write\n");
    system("pause");
    return 0;
}