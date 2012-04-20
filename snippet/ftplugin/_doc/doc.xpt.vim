XPTemplate priority=all-

XPT fun_doc
/**
 * @date `strftime("%Y %b %d")^
 * @brief `helloworld^
 * @description
 *     `cursor^
 * @param `param^ `desc^
 * @return `result^
 */


XPT para syn=comment	" comment parameter
@param {`Object^} `name^ `desc^

XPT fhead
XSET cursor|pre=CURSOR
/**-------------------------/// `sum^ \\\---------------------------
 *
 * <b>`function^</b>
 * @date `strftime("%Y %b %d")^
 *
 * @brief `breif^
 * @description :
 *     `cursor^
 *
 * @author `$author^
 * @TODO :
 *
 *--------------------------\\\ `sum^ ///---------------------------*/

..XPT



