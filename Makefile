download-coco:
	mkdir -p data/raw/coco
	mkdir -p data/tfrecord/coco
	cd data/raw/coco; wget http://images.cocodataset.org/zips/train2017.zip
	cd data/raw/coco; wget http://images.cocodataset.org/zips/val2017.zip
	cd data/raw/coco; wget http://images.cocodataset.org/annotations/annotations_trainval2017.zip

	cd data/raw/coco; unzip train2017.zip
	cd data/raw/coco; unzip val2017.zip
	cd data/raw/coco; unzip annotations_trainval2017.zip

create-coco-tfrecord:
	cd data; \
	python -m create_coco_tfrecord \
		-train_image_dir raw/coco/train2017 \
		-val_image_dir raw/coco/val2017 \
		-train_annotations_file raw/coco/annotations/instances_train2017.json \
		-val_annotations_file raw/coco/annotations/instances_val2017.json \
		-output_dir tfrecord/coco

local-train:
	python -m train \
		-tfrecord_dir data/tfrecord/coco \
		-weights weights \
		-train_iter 800000 \
		-batch_size 8 \
		-print_interval 10 \
		-save_interval 10000 \
		-valid_iter 5000
