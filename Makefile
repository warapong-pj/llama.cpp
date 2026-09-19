define newline


endef

$(error Build system changed:$(newline)\
The Makefile build has been replaced by CMake.$(newline)$(newline)\
For build instructions see:$(newline)\
https://github.com/ggml-org/llama.cpp/blob/master/docs/build.md$(newline)${newline})

# complier_quantize:
# 	cmake -B build -DGGML_CUDA=ON
# 	cmake --build build --config Release -j$(nproc)

# build_model:
# 	hf download Qwen/Qwen3.5-9B --local-dir ./model
# 	./convert_hf_to_gguf.py ./model/ --outfile ./models/Qwen3.5-9B.f16.gguf --outtype f16

# quantize_model:
# 	./build/bin/llama-quantize ./models/Qwen3.5-9B.f16.gguf ./models/Qwen3.5-9B.q5_k_m.gguf q5_k_m

# start:
# 	docker-compose up -d

# stop:
# 	docker-compose stop

# cleanup:
# 	docker-compose down --volumes