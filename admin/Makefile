database=mysql://root:123456@localhost:3306
database_url=${database}/admin-go
database_dev_url=${database}/go-diff
file_schema_url=file://schema

empty:
	@echo "Error: .PHONY is no specified"

schema-inspect:
	@atlas schema inspect \
        --url ${file_schema_url} \
        --dev-url ${database_dev_url} \
        --exclude atlas_schema_revisions \
        --format '{{ sql . }}'

schema-diff:
	@atlas schema diff \
        --from ${database_url} \
        --to ${file_schema_url} \
        --dev-url ${database_dev_url} \
        --exclude atlas_schema_revisions

migrate-diff:
ifndef name
	@echo "Error: name parameter is no specified"
	@exit 1
endif
	atlas migrate diff ${name} \
  		--to ${file_schema_url} \
  		--dev-url "${database_dev_url}" \
  		--format '{{ sql . "  " }}'

migrate-apply:
ifndef env
	@echo "Error: env parameter is no specified"
	@exit 1
endif
	atlas migrate apply --env ${env}

.PHONY: schema-inspect schema-diff migrate-diff migrate-apply
