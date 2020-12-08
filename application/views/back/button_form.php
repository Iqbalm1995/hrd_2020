
	<div class="ui container grid">
		<div class="row">
			<div class="sixteen wide computer">
				<!-- ------------------BEGIN BUTTON------------------ -->
				<h2>BUTTON</h2>
				<div class="ui divider"></div>
				<a href="https://fomantic-ui.com/elements/button.html" target="_blank" class="ui button">Button</a>
				<button class="ui primary button">primary</button>
				<button class="ui secondary button">secondary</button>
				<button class="ui positive button">positive</button>
				<button class="ui negative button">negative</button>
				<button class="ui primary button"><i class="save icon"></i>Primary</button>
				<button class="ui secondary button"><i class="pencil icon"></i>secondary</button>
				<button class="ui positive button"><i class="check icon"></i>positive</button>
				<button class="ui negative button"><i class="trash icon"></i>negative</button>
				<a href="https://fomantic-ui.com/elements/icon.html" target="_blank" class="ui button">
					<i class="help icon"></i>More icon
				</a>
				<!-- ------------------END BUTTON------------------ -->
				<br><br>
				<!-- ------------------BEGIN FORM------------------ -->
				<h2>FORM</h2>
				<div class="ui divider"></div>
				<form action="#" method="POST">
	                <div class="ui segment">
	                    <div class="ui form">
	                    	<!-- BEGIN TYPE TEXT -->
                            <div class="field">
                                <label>TYPE TEXT</label>
                                <input type="text" name="" placeholder="">
                            </div>
                            <!-- END TYPE TEXT -->

                            <!-- BEGIN TYPE NUMBER -->
                            <div class="field">
                                <label>TYPE NUMBER</label>
                                <input type="number" name="" placeholder="">
                            </div>
                            <!-- END TYPE NUMBER -->

                            <!-- BEGIN TYPE TEXT AREA -->
                            <div class="field">
                                <label>TYPE TEXT AREA</label>
                                <textarea></textarea>
                            </div>
                            <!-- END TYPE TEXT AREA -->

                            <!-- BEGIN TYPE SHORT TEXT AREA -->
                            <div class="field">
                                <label>TYPE SHORT TEXT AREA</label>
                                <textarea rows="2"></textarea>
                            </div>
                            <!-- END TYPE SHORT TEXT AREA -->

                            <!-- BEGIN SELECT -->
                            <div class="field">
                                <label>SELECT</label>
                                <select class="ui dropdown" id="selek">
									<option value=""></option>
									<option value="1">Pilihan Satu</option>
									<option value="2">Pilihan Dua</option>
                                </select>
                                <script>
                                	$('#selek').dropdown();
                                </script>
                            </div>
                            <!-- END SELECT -->

                            <!-- BEGIN TWO FIELDS -->
                            <div class="field">
                                <label>TWO FIELDS</label>
                            	<div class="two fields">
                            		<div class="field">
                            			<input type="text" name="" placeholder="">
                            		</div>
                            		<div class="field">
                            			<input type="text" name="" placeholder="">
                            		</div>
                            	</div>
                            </div>
                            <!-- END TWO FIELDS -->

                            <!-- BEGIN CALENDAR -->
                            <div class="field">
                                <label>CALENDAR</label>
                                <div class="ui calendar" id="kalender">
                                	<div class="ui input left icon">
                                		<i class="calendar icon"></i>
                                		<input type="text" name="" placeholder="">
                                	</div>
                                	<script>
                                		$('#kalender').calendar({type: 'date'});
                                	</script>
                                </div>
                            </div>
                            <!-- END CALENDAR -->

                            <!-- BEGIN USERNAME -->
                            <div class="required field">
                                <label>USERNAME</label>
                            	<div class="ui input left icon">
                            		<i class="user icon"></i>
                            		<input type="text" name="" placeholder="" required>
                            	</div>
                            </div>
                            <!-- END USERNAME -->
                            
                            <!-- BEGIN PASSWORD -->
                            <div class="required field">
                                <label>PASSWORD</label>
                            	<div class="ui input left icon">
                            		<i class="key icon"></i>
                            		<input type="password" name="" placeholder="" required>
                            	</div>
                            </div>
                            <!-- END PASSWORD -->
	                    </div>
	                    <br>
	                    <button class="ui primary button"><i class="save icon"></i>SIMPAN</button>
	                    <a class="ui button" href=""><i class="cancel icon"></i>BATAL</a>
	                </div>
	            </form>
				<!-- ------------------END FORM------------------ -->
				<br><br>
			</div>
		</div>
	</div>
