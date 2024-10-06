plagues=(blood frogs lice flies sickness boils hail locusts darkness death)

# # Print the array
# echo ${plagues[*]}
# # OR
# echo ${plagues[@]}

# # Print the array length
# echo ${#plagues[*]}

# # Print the first element
# echo ${plagues[0]}

# # Print the last element
# echo ${plagues[-1]}

# # get part of the array
# echo ${plagues[*]:5:3}

dwarfs=(grumpy sleepy sneezy doc)

# # Add an elements to the end of the array
dwarfs+=(bashful dopey happy)
echo ${dwarfs[*]}