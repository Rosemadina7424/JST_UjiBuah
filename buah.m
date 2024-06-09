gambar=imread('apel1.jfif');
suml=sum(sum(gambar));
ukuran=size(gambar);
warna=suml./(ukuran(1)*ukuran(2));
warna(1);
data_latih(1,1)=warna(1);
data_latih(2,1)=warna(2);
data_latih(3,1)=warna(3);

gambar=imread('apel2.jfif');
suml=sum(sum(gambar));
ukuran=size(gambar);
warna=suml./(ukuran(1)*ukuran(2));
data_latih(1,2)=warna(1);
data_latih(2,2)=warna(2);
data_latih(3,2)=warna(3);

gambar=imread('apel3.jfif');
suml=sum(sum(gambar));
ukuran=size(gambar);
warna=suml./(ukuran(1)*ukuran(2));
data_latih(1,3)=warna(1);
data_latih(2,3)=warna(2);
data_latih(3,3)=warna(3);

gambar=imread('apel4.jfif');
suml=sum(sum(gambar));
ukuran=size(gambar);
warna=suml./(ukuran(1)*ukuran(2));
data_latih(1,4)=warna(1);
data_latih(2,4)=warna(2);
data_latih(3,4)=warna(3);

gambar=imread('apel5.jfif');
suml=sum(sum(gambar));
ukuran=size(gambar);
warna=suml./(ukuran(1)*ukuran(2));
data_latih(1,5)=warna(1);
data_latih(2,5)=warna(2);
data_latih(3,5)=warna(3);

gambar=imread('jerukkk.jfif');
suml=sum(sum(gambar));
ukuran=size(gambar);
warna=suml./(ukuran(1)*ukuran(2));
data_latih(1,6)=warna(1);
data_latih(2,6)=warna(2);
data_latih(3,6)=warna(3);

gambar=imread('jeruk2.jfif');
suml=sum(sum(gambar));
ukuran=size(gambar);
warna=suml./(ukuran(1)*ukuran(2));
data_latih(1,7)=warna(1);
data_latih(2,7)=warna(2);
data_latih(3,7)=warna(3);

gambar=imread('jeruk3.jfif');
suml=sum(sum(gambar));
ukuran=size(gambar);
warna=suml./(ukuran(1)*ukuran(2));
data_latih(1,8)=warna(1);
data_latih(2,8)=warna(2);
data_latih(3,8)=warna(3);

gambar=imread('jeruk4.jfif');
suml=sum(sum(gambar));
ukuran=size(gambar);
warna=suml./(ukuran(1)*ukuran(2));
data_latih(1,9)=warna(1);
data_latih(2,9)=warna(2);
data_latih(3,9)=warna(3);

gambar=imread('jeruk5.jfif');
suml=sum(sum(gambar));
ukuran=size(gambar);
warna=suml./(ukuran(1)*ukuran(2));
data_latih(1,10)=warna(1);
data_latih(2,10)=warna(2);
data_latih(3,10)=warna(3);

gambar=imread('nanas1.jfif');
suml=sum(sum(gambar));
ukuran=size(gambar);
warna=suml./(ukuran(1)*ukuran(2));
data_latih(1,11)=warna(1);
data_latih(2,11)=warna(2);
data_latih(3,11)=warna(3);

gambar=imread('nanas2.jfif');
suml=sum(sum(gambar));
ukuran=size(gambar);
warna=suml./(ukuran(1)*ukuran(2));
data_latih(1,12)=warna(1);
data_latih(2,12)=warna(2);
data_latih(3,12)=warna(3);

gambar=imread('nanas3.jfif');
suml=sum(sum(gambar));
ukuran=size(gambar);
warna=suml./(ukuran(1)*ukuran(2));
data_latih(1,13)=warna(1);
data_latih(2,13)=warna(2);
data_latih(3,13)=warna(3);

gambar=imread('nanas4.jfif');
suml=sum(sum(gambar));
ukuran=size(gambar);
warna=suml./(ukuran(1)*ukuran(2));
data_latih(1,14)=warna(1);
data_latih(2,14)=warna(2);
data_latih(3,14)=warna(3);

gambar=imread('nanas5.jfif');
suml=sum(sum(gambar));
ukuran=size(gambar);
warna=suml./(ukuran(1)*ukuran(2));
data_latih(1,15)=warna(1);
data_latih(2,15)=warna(2);
data_latih(3,15)=warna(3);

net1=newff(minmax(data_latih), [45, 3], {'logsig','logsig'}, 'traincgp');
init(net1);
net1.trainParam.epochs=10000;
net1.trainParam.goal=0.0000001;

tic;
net1=train(net1,data_latih,target);
waktu_training=toc;

hasil=sim(net1,data_latih);
hasil;
hasil

gambar=imread('apel-uji1.jfif');
suml=sum(sum(gambar));
ukuran=size(gambar);
warna=suml./(ukuran(1)*ukuran(2));

data_uji(1,1)=warna(1);
data_uji(2,1)=warna(2);
data_uji(3,1)=warna(3);

gambar=imread('apel-uji2.jfif');
suml=sum(sum(gambar));
ukuran=size(gambar);
warna=suml./(ukuran(1)*ukuran(2));

data_uji(1,2)=warna(1);
data_uji(2,2)=warna(2);
data_uji(3,2)=warna(3);

gambar=imread('apel-uji3.jfif');
suml=sum(sum(gambar));
ukuran=size(gambar);
warna=suml./(ukuran(1)*ukuran(2));

data_uji(1,3)=warna(1);
data_uji(2,3)=warna(2);
data_uji(3,3)=warna(3);

gambar=imread('jeruk-uji1.jfif');
suml=sum(sum(gambar));
ukuran=size(gambar);
warna=suml./(ukuran(1)*ukuran(2));

data_uji(1,4)=warna(1);
data_uji(2,4)=warna(2);
data_uji(3,4)=warna(3);

gambar=imread('jeruk-uji2.jfif');
suml=sum(sum(gambar));
ukuran=size(gambar);
warna=suml./(ukuran(1)*ukuran(2));

data_uji(1,5)=warna(1);
data_uji(2,5)=warna(2);
data_uji(3,5)=warna(3);

gambar=imread('jeruk-uji3.jfif');
suml=sum(sum(gambar));
ukuran=size(gambar);
warna=suml./(ukuran(1)*ukuran(2));

data_uji(1,6)=warna(1);
data_uji(2,6)=warna(2);
data_uji(3,6)=warna(3);

gambar=imread('nanas-uji1.jfif');
suml=sum(sum(gambar));
ukuran=size(gambar);
warna=suml./(ukuran(1)*ukuran(2));

data_uji(1,7)=warna(1);
data_uji(2,7)=warna(2);
data_uji(3,7)=warna(3);

gambar=imread('nanas-uji2.jfif');
suml=sum(sum(gambar));
ukuran=size(gambar);
warna=suml./(ukuran(1)*ukuran(2));

data_uji(1,8)=warna(1);
data_uji(2,8)=warna(2);
data_uji(3,8)=warna(3);

gambar=imread('nanas-uji3.jfif');
suml=sum(sum(gambar));
ukuran=size(gambar);
warna=suml./(ukuran(1)*ukuran(2));

data_uji(1,9)=warna(1);
data_uji(2,9)=warna(2);
data_uji(3,9)=warna(3);

hasil_uji=sim(net1,data_uji);
hasil_uji