file_name=ota_asap7

lef=.lef
v=.v
map=.map
gds=_gds
source=_0.gds.json
source_file=$file_name$source
target=_0.gds
target_file=$file_name$target
slash=/

source_folder=Results
Feature_value_file=Feature_value

lef_file=$file_name$lef
v_file=$file_name$v
map_file=$file_name$map

gds_folder=$file_name$gds

mkdir $gds_folder

source /home/yaguang/Desktop/src/work_branch/general/bin/activate

export LD_LIBRARY_PATH=/usr/local/lib/lpsolve/lp_solve_5.5.2.5_dev_ux64/
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/yaguang/Desktop/opt/tensorflow/bazel-bin/tensorflow

for i in $(seq 0 1 1)
do
  for j in $(seq 0 1 1)
  do
    for q in $(seq 0 1 1)
    do
      for p in $(seq 0 1 1)
      do

       index=$((i*1000+j*100+q*10+p*1))
       mkdir $gds_folder$slash$index
      ./pnr_compiler ./$file_name $lef_file $v_file $map_file layers.json $file_name 1 0 $i $j $q $p | tee log && python json2gds.py $source_folder$slash$source_file $target_file && cp $target_file $gds_folder$slash$index$slash$target_file && cp $Feature_value_file $gds_folder$slash$index$slash$Feature_value_file && rm $Feature_value_file && rm -r $source_folder

      done
    done
  done  
done

