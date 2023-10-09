
def reverse_string str
   i=0
    j=str.length-1
    while(i<j)
        temp = str[i];
        str[i] = str[j];
        str[j] = temp;
        j=j-1
        i=i+1
  end
  return str
end


