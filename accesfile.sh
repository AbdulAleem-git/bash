#!/bin/bash 
while [[ $# -gt 0 ]]
do
arg="$1"
    case "${arg}" in
    -f|--file)
	 file_name=$2
         shift # past argument
	 shift # past value 
        ;;
    -a|--action	)
        cfg="$2"
	echo "cfg "$cfg
	if [[ "$cfg" == "print" ]] || [[ "$cfg" == "delete" ]] || [[ "$cfg" == "modify" ]]; then
   		if [[ "$cfg" == "print" ]]; then
			x=$(head -n 1 $file_name)
			echo $x
		elif [[ "$cfg" == "delete" ]]; then
		         sed -i '1d' $file_name
			echo "deleted succesfully"	 
		else
			sed -i 'ls/.*/abdul/' $file_name
			echo "modified succesfull"

		fi
	       
	 shift # past argument
	 shift # past value
	else
	 echo “not Allow”
	 exit 1
 fi
      ;;
    esac    
done
