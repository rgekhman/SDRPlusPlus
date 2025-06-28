# Step 3: Build SDR++
#echo "🔨 Building SDR++..."
#cd ~/SDRPlusPlus
#cd build

# For development only (requires /resources)
#cmake ..
#make -j$(nproc)

#not for developmet 
#sudo make install

# Step 4: Run SDR++
#echo "✅ Build complete. Launching SDR++..."
#dev ./sdrpp --resource-path ../resources
# NOT dev 
sudo rtl_tcp -a 0.0.0.0 -p 65259
