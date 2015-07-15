public with sharing class ActionStatusDemoController {
	// 処理中フラグ
	public Boolean waitingFlg{get;set;}	
	// 確認ボタン表示フラグ
	public Boolean configFlg{get;set;}	

	/**
	 * コンストラクタ
	 */
	public ActionStatusDemoController(){
		this.waitingFlg = false;
		this.configFlg = false;
	}

	public void demoMethod(){
		/**
		 * 処理ロジックを記載する
		 */
		// 処理正常エラーメッセージ
		Apexpages.addMessage(new ApexPages.Message(
				apexpages.Severity.CONFIRM, '処理が正常終了しました。'));
		this.waitingFlg = false;
		this.configFlg = true;
	}

	/**
	 * 確認ボタンの処理
	 * @paratm なし
	 * @return PageReference
	 */
	public PageReference toDoNext(){
		PageReference nextPage = new ApexPages.Pagereference('/');
		return nextPage;
	}
}