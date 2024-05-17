#!/bin/bash

# Simple script to do some comparisons between fresh compiled shim binaries and pre-built ones
# (Check for binary reproducibility)

echo "
Shim Comparison, original binary vs. freshly built binaries:

SHA256 sums ::
$(sha256sum /shimx64.efi   /shim_result/usr/share/shim/*/x64/shim*.efi)

Binary compare (blank output means binaries are the same) ::
$(cmp /shim_result/usr/share/shim/*/x64/shimx64.efi /shimx64.efi)


Pesign checks ::
$(pesign -h -P -i /shim_result/usr/share/shim/*/x64/shimx64.efi)
$(pesign -h -P -i /shimx64.efi)
"
