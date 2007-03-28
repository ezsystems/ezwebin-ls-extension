{default collection=cond( $collection_id, fetch( content, collected_info_collection, hash( collection_id, $collection_id ) ),
                          fetch( content, collected_info_collection, hash( contentobject_id, $node.contentobject_id ) ) )}

{set-block scope=global variable=title}{'Form %formname'|i18n('design/ezwebin/collectedinfo/form',,hash('%formname',$node.name|wash))}{/set-block}

<h1>{'Thank you for your feedback.'|i18n('design/ezwebin/collectedinfo/form')}</h1>

<h2>{$object.name|wash}</h2>

{section show=$error}

{section show=$error_existing_data}
<p>{'You have already submitted this form. The data you entered was:'|i18n('design/ezwebin/collectedinfo/form')}</p>
{/section}

{/section}

{section loop=$collection.attributes}

<h3>{$:item.contentclass_attribute_name|wash}</h3>

{attribute_result_gui view=info attribute=$:item}

{/section}

<p/>

<a href={$node.parent.url|ezurl}>{'Return to site'|i18n('design/ezwebin/collectedinfo/form')}</a>

{/default}