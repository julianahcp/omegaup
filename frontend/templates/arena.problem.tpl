{include file='arena.head.tpl' jsfile='/ux/contest.js' bodyid='only-problem'}
			<div id="problems" class="tab navleft">								
				<div id="problem" class="main">
					<script type="text/json" id="problem-json">{$problem}</script>
					<h1 class="title">{$title|escape}</h1>
					<table class="data">
						<tr>
							<td>{#wordsPoints#}</td>
							<td class="points">{$points|escape}</div>
							<td>{#wordsValidator#}</td>
							<td class="validator">{$validator|escape}</div>
						</tr>
						<tr>
							<td>{#wordsTimeLimit#}</td>
							<td class="time_limit">{$time_limit|escape}</td>
							<td>{#wordsMemoryLimit#}</td>
							<td class="memory_limit">{$memory_limit|escape}</td>
						</tr>
					</table>
					<div class="statement">{$problem_statement}</div>
					<hr />
					<div class="source">Fuente: <span>{$source|escape}</span></div>
					<table class="runs">
						<caption>{#wordsSubmissions#}</caption>
						<thead>
							<tr>
								<th>{#wordsID#}</th>
								<th>{#wordsLanguage#}</th>
								<th>{#wordsRuntime#}</th>
								<th>{#wordsMemoria#}</th>
								<th>{#wordsTime#}</th>
								<th>{#wordsStatus#}</th>
								<th>{#wordsPercentage#}</th>
								<th>{#wordsPenalty#}</th>
								<th>C&oacute;digo</th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<td colspan="9"><a href="#new-run">Nuevo envío</a></td>
							</tr>
						</tfoot>
						<tbody class="run-list">
							<tr class="template">
								<td class="guid"></td>
								<td class="language"></td>
								<td class="runtime"></td>
								<td class="memory"></td>
								<td class="time"></td>
								<td class="status"></td>
								<td class="percentage"></td>
								<td class="penalty"></td>
								<td class="code"></td>
							</tr>
						</tbody>
					</table>
					<table class="best-solvers">
						<caption>{#wordsBestSolvers#}</caption>
						<thead>
							<tr>
								<th>{#wordsUser#}</th>
								<th>{#wordsLanguage#}</th>
								<th>{#wordsRuntime#}</th>
								<th>{#wordsMemoria#}</th>
								<th>{#wordsTime#}</th>
							</tr>
						</thead>
						<tbody class="solver-list">
							<tr class="template">
								<td><a class="user"></a></td>
								<td class="language"></td>
								<td class="runtime"></td>
								<td class="memory"></td>
								<td class="time"></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<div id="overlay">
			<form id="submit" method="POST">
				<button class="close">&times;</button>
				<div id="lang-select">
					Lenguaje
					<select name="language">
						<option value=""></option>
						<option value="cpp11">C++11</option>
						<option value="cpp">C++</option>
						<option value="c">C</option>
						<option value="hs">Haskell</option>
						<option value="java">Java</option>
						<option value="p">Pascal</option>
						<option value="py">Python</option>
						<option value="rb">Ruby</option>
						<option value="kp">Karel (Pascal)</option>
						<option value="kj">Karel (Java)</option>
						<option value="cat">{#wordsJustOutput#}</option>
					</select>
				</div>
				<textarea name="code"></textarea><br/>
				<input type="file" id="code_file" /><br/>
				<input type="submit" />
			</form>			
		</div>
		<div id="footer">
		</div>
	</body>
</html>
