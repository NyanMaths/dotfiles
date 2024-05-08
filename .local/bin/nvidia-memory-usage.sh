#!/usr/bin/env bash

memory_total=$(nvidia-smi --query-gpu=memory.total --format=csv,noheader,nounits)
memory_free=$(nvidia-smi --query-gpu=memory.free --format=csv,noheader,nounits)

echo $(awk '{print int(($2-$1)/$2*100)}' <<<"${memory_free} ${memory_total}")
