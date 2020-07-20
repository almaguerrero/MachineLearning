do = true;
atributes=[1,2,3,4]
for i=1:4
while do
   if (sum(atributes)==0)
    do=false;
   end
end
atributes(i)=0;
end
