#!/bin/bash
vaurien --protocol http --backend nginx:8001 \
        --proxy 0.0.0.0:8002  \
        --behavior 100:delay --behavior-delay-sleep .5
