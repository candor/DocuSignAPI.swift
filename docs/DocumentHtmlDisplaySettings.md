# DocumentHtmlDisplaySettings

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cellStyle** | **String** | Specifies the valid CSS-formatted styles to use on responsive table cells. Only valid in display sections of &#x60;responsive_table&#x60; or &#x60;responsive_table_single_column&#x60; types. | [optional] 
**collapsibleSettings** | [**DocumentHtmlCollapsibleDisplaySettings**](DocumentHtmlCollapsibleDisplaySettings.md) |  | [optional] 
**display** | **String** | This string sets the display and behavior properties of the document during signing. The possible values are:  * &#x60;modal&#x60;&lt;br&gt;   The document is shown as a supplement action strip   and can be viewed, downloaded, or printed in a modal window.   This is the recommended value for supplemental documents.   * &#x60;download&#x60;&lt;br&gt;   The document is shown as a supplement action strip   and can be viewed, downloaded, or printed in a new browser window.   * &#x60;inline&#x60;&lt;br&gt;   The document is shown in the normal signing window.   This value is not used with supplemental documents,   but is the default value for all other documents.  | [optional] 
**displayLabel** | **String** | The label for the display section. | [optional] 
**displayOrder** | **Int** | The position on the page where the display section appears. | [optional] 
**displayPageNumber** | **Int** | The number of the page on which the display section appears. | [optional] 
**hideLabelWhenOpened** | **Bool** | When **true**, the &#x60;displayLabel&#x60; is hidden when the display section is expanded and the display section is no longer collapsible. This property is valid only when the value of the &#x60;display&#x60; property is &#x60;collapsed&#x60;. | [optional] 
**inlineOuterStyle** | **String** | Specifies the valid CSS-formatted styles to use on inline display sections. This property is valid only when the value of the &#x60;display&#x60; property is &#x60;inline&#x60;. | [optional] 
**labelWhenOpened** | **String** | The label for the display section when it is expanded from a collapsed state. This label displays only on the first opening and is only valid with the value of the &#x60;display&#x60; property is &#x60;collapsed&#x60;. | [optional] 
**preLabel** | **String** | Enables you to add descriptive text that appears before a collapsed section or continue button. | [optional] 
**scrollToTopWhenOpened** | **Bool** | When **true** and the section is expanded, the position of the section close is scrolled to the top of the screen. This property is only valid when the value of the &#x60;display&#x60; property is &#x60;collapsed&#x60;. | [optional] 
**tableStyle** | **String** | Specifies the valid CSS-formatted styles to use on responsive tables. This property is valid only when the value of the &#x60;display&#x60; property is &#x60;responsive_table&#x60; or &#x60;responsive_table_single_column&#x60;. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


