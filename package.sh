#!/bin/bash
zip -r latest *
mkdir -p rdy4deploy_ref_manager
mv latest.zip rdy4deploy_ref_manager/latest.zip
