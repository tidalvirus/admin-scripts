#!/bin/bash

OLDPREFIX=$1
NEWPREFIX=$2

cat <<EOF
RENAME TABLE ${OLDPREFIX}_commentmeta TO ${NEWPREFIX}_commentmeta;
RENAME TABLE ${OLDPREFIX}_comments TO ${NEWPREFIX}_comments;
RENAME TABLE ${OLDPREFIX}_links TO ${NEWPREFIX}_links;
RENAME TABLE ${OLDPREFIX}_options TO ${NEWPREFIX}_options;
RENAME TABLE ${OLDPREFIX}_postmeta TO ${NEWPREFIX}_postmeta;
RENAME TABLE ${OLDPREFIX}_posts TO ${NEWPREFIX}_posts;
RENAME TABLE ${OLDPREFIX}_term_relationships TO ${NEWPREFIX}_term_relationships;
RENAME TABLE ${OLDPREFIX}_term_taxonomy TO ${NEWPREFIX}_term_taxonomy;
RENAME TABLE ${OLDPREFIX}_terms TO ${NEWPREFIX}_terms;
RENAME TABLE ${OLDPREFIX}_usermeta TO ${NEWPREFIX}_usermeta;
RENAME TABLE ${OLDPREFIX}_users TO ${NEWPREFIX}_users;
RENAME TABLE ${OLDPREFIX}_woocommerce_attribute_taxonomies TO ${NEWPREFIX}_woocommerce_attribute_taxonomies;
RENAME TABLE ${OLDPREFIX}_woocommerce_downloadable_product_permissions TO ${NEWPREFIX}_woocommerce_downloadable_product_permissions;
RENAME TABLE ${OLDPREFIX}_woocommerce_order_itemmeta TO ${NEWPREFIX}_woocommerce_order_itemmeta;
RENAME TABLE ${OLDPREFIX}_woocommerce_order_items TO ${NEWPREFIX}_woocommerce_order_items;
RENAME TABLE ${OLDPREFIX}_woocommerce_tax_rate_locations TO ${NEWPREFIX}_woocommerce_tax_rate_locations;
RENAME TABLE ${OLDPREFIX}_woocommerce_tax_rates TO ${NEWPREFIX}_woocommerce_tax_rates;
RENAME TABLE ${OLDPREFIX}_woocommerce_termmeta TO ${NEWPREFIX}_woocommerce_termmeta;
EOF
